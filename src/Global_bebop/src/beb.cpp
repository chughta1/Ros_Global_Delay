#include <ros/ros.h>
#include <geometry_msgs/Twist.h> 
#include <geometry_msgs/PoseArray.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>
#include <stdlib.h> 
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include "beb/Complete.h"
#include "beb/Optimized.h"
#include "beb/Next_trajectory.h"
#include "beb/randomDelay.h"
#include "beb/CheckLearn.h"
#include "beb/Estimate.h"
#include "beb/SendDelayLogic.h"
#include "beb/TrReady.h"
#include "beb/broadReady.h"
#include <iostream>
#include <std_srvs/Empty.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Empty.h>
#include <ros/console.h>
#include <math.h>
#include "path.h"
#include "pid.hpp"
#include <time.h>
#include <string>
#include <cstdlib>
#include <vector>


///////////// New code(11/12/2017) change the goals here to PoseStamped  
///////////// New code(15/01/2018) Implement a service that gives you the PoseArray goals

using namespace std;

#define _USE_MATH_DEFINES

bool started = false;
bool glcheck = false;
int iter;
time_t start_time;
time_t t;
double sec;
double pt = 0.0;
double TimeCount = 0.0;
double AvgTime = 0.0;
bool delaycheck = false;
float delay;
int clock_iter = 1;
double delay_interval = 0.5;
double this_time;
double last_time;
bool wantDelay = true; // Change this to when you want it and dont want it
bool LearningReady = false;
bool firstRun = true;
bool TrainReady = false;
bool BroadCastReady = false;
bool CallNext = false;
double delTime1;
double delTime2;
bool wantGlobalDelay = false;
double goalDist = 0.05; //change this for goal threshold
bool TrajectoryComplete = false;

bool kick_bool;





int numPoints =100;
double step = M_PI/numPoints;

double get(
    const ros::NodeHandle& n,
    const std::string& name) {
    double value;
    n.getParam(name, value);
    return value;
}



class Controller
{
public:
  Controller(
        const std::string& worldFrame,
        const std::string& frame,
        const ros::NodeHandle& n):
        m_worldFrame(worldFrame)
        , m_frame(frame)
        , m_pubNav()
        , m_error()
        , ch_pose()
        , m_listener()
        , m_pidX(
            get(n, "PIDs/X/kp"),
            get(n, "PIDs/X/kd"),
            get(n, "PIDs/X/ki"),
            get(n, "PIDs/X/minOutput"),
            get(n, "PIDs/X/maxOutput"),
            get(n, "PIDs/X/integratorMin"),
            get(n, "PIDs/X/integratorMax"),
            "x")
        , m_pidY(
            get(n, "PIDs/Y/kp"),
            get(n, "PIDs/Y/kd"),
            get(n, "PIDs/Y/ki"),
            get(n, "PIDs/Y/minOutput"),
            get(n, "PIDs/Y/maxOutput"),
            get(n, "PIDs/Y/integratorMin"),
            get(n, "PIDs/Y/integratorMax"),
            "y")
        , m_pidZ(
            get(n, "PIDs/Z/kp"),
            get(n, "PIDs/Z/kd"),
            get(n, "PIDs/Z/ki"),
            get(n, "PIDs/Z/minOutput"),
            get(n, "PIDs/Z/maxOutput"),
            get(n, "PIDs/Z/integratorMin"),
            get(n, "PIDs/Z/integratorMax"),
            "z")
        , m_pidYaw(
            get(n, "PIDs/Yaw/kp"),
            get(n, "PIDs/Yaw/kd"),
            get(n, "PIDs/Yaw/ki"),
            get(n, "PIDs/Yaw/minOutput"),
            get(n, "PIDs/Yaw/maxOutput"),
            get(n, "PIDs/Yaw/integratorMin"),
            get(n, "PIDs/Yaw/integratorMax"),
            "yaw")
        , goal()////////////////////Posestamped goal
        , m_serviceLand()
        ,m_subscribeGoal()///////////callbacks
        {
        ros::NodeHandle nh;
      //  AskforNext = nh.advertiseService("trajectory",&Controller::Next,this);
      //  ClientAsk = nh.serviceClient<beb::Next_trajectory>("trajectory");
        ClientOpt = nh.serviceClient<beb::Optimized>("OptimizeDistance");
        ClientCheck = nh.serviceClient<beb::Complete>("complete");
        m_listener.waitForTransform(m_worldFrame, m_frame, ros::Time(0), ros::Duration(10.0)); ///////// wait for the last transform from world to m to be aviable
        ClientAsk.waitForExistence(ros::Duration(10));
        ClientOpt.waitForExistence(ros::Duration(10));
        m_pubNav = nh.advertise<geometry_msgs::Twist>("bebop/cmd_vel", 1);
        plot_Train = nh.advertise<geometry_msgs::Vector3>("TrainPlot", 1);
        m_error = nh.advertise<geometry_msgs::Vector3>("error", 1);
        //m_subscribeGoal = nh.subscribe("MPC", 1, &Controller::goalChanged, this);//////////////////////callback=goalChanged
        ch_pose = nh.advertise<geometry_msgs::PoseStamped>("pos_check",1);
        initpos = nh.advertise<geometry_msgs::Vector3>("error_check",1);
        Land = nh.advertise<std_msgs::Empty>("bebop/land", 1);
        Client_delay = nh.serviceClient<beb::randomDelay>("DelayGen");
        Client_Estimate = nh.serviceClient<beb::Estimate>("EstGen");
        Client_Learn = nh.serviceClient<beb::CheckLearn>("LearnLogic");
        Client_Train = nh.serviceClient<beb::TrReady>("TrainingReady");
        Client_BroadCast = nh.serviceClient<beb::broadReady>("BroadReady");
        m_serviceLand = nh.advertiseService("land", &Controller::land, this);
        DelayLogic = nh.advertiseService("Delaylog", &Controller::DelayL, this);
        bool_delay = nh.advertise<std_msgs::Bool>("BoolLog", 1);
        BR_Logic = nh.subscribe("DelLogic", 1, &Controller::gdlgdl, this);
        begin = false;
        NtOccupied = true;
        last_time = ros::Time::now().toSec();
     
                
    }
    void run(double frequency)
    {
        ros::NodeHandle node;
        ros::Timer timer = node.createTimer(ros::Duration(1.0/frequency), &Controller::iteration, this);
        ros::spin();
    }

private:
  void goalChanged(
         const geometry_msgs::PoseStamped::ConstPtr& msg)
    {
        goal = *msg;
        
    }

    void gdlgdl(
         const std_msgs::Bool msg)
    {
        BroadCastReady2 = msg;
        
    }


  void GetDelay(const float dl)
  {
    delaycheck = true;
    delay = dl;
    ROS_ERROR_STREAM("DELAY: "<< delay);
  }


    bool land(
        std_srvs::Empty::Request& req,
        std_srvs::Empty::Response& res)
    {
        ROS_INFO("Landing requested!");//////////////////////////////////////////////////////////////////same
        std_msgs::Empty landmsg;
        while(true)
        {Land.publish(landmsg);}

        return true;
    }

   bool DelayL(beb::SendDelayLogic::Request& req,beb::SendDelayLogic::Response& res)
    {
        if(req.askdb)
        {
          res.senddb = delaycheck;
          return true;
        }
    }
  
  

  void pidReset()
    {
        m_pidX.reset();
        m_pidY.reset();
        m_pidZ.reset();
        m_pidYaw.reset();
    }

  void iteration(const ros::TimerEvent& e)
  {
    double t0;
  double t1;
  double t2;
  double t3;
  double t4;
  double t5;
  double norm;
 // std_msgs::Float64 dtime;
 // std_msgs::Float64 dtime1;
  double dtime;
  double dtime1;
  
  double ang;
  int trajIndex;
  int t_length;
  geometry_msgs::Vector3 est_v;
  
  double waitTime;
  tfScalar yaw1,roll1,pitch1;
  tfScalar yaw2,roll2,pitch2;
  tfScalar desYaw;
  
  beb::Next_trajectory nxt;
  beb::Optimized OptPoint;
  beb::randomDelay rand_err;
  beb::CheckLearn ch_Learn;
  beb::Estimate est;
  beb::TrReady TrR;
  beb::broadReady brR;
  beb::Complete CheckTraj;
  geometry_msgs::Pose HoldPose;
  int indexToFollow;



  this_time = ros::Time::now().toSec();


delay = 0.3;

  delTime2 = ros::Time::now().toNSec();

  if(abs(delTime2 - delTime1) < delay*pow(10,9)) // Commented this out
  {
    //delaycheck = true;
    gdl.data = true;
  }
  else{//delaycheck = false;
    gdl.data = false;
  } 
    
//bool_delay.publish(gdl);  this has been moved to the try-catch condition below!!

bool_delay.publish(gdl);


                ch_pose.publish(TempGoals);
                tf::TransformBroadcaster br;
                tf::StampedTransform transform;
                try{
                m_listener.lookupTransform( m_worldFrame,m_frame, ros::Time(0), transform);}
                catch (tf::TransformException &ex)
                {
                  ROS_ERROR("%s",ex.what());
                }

                geometry_msgs::Twist msg2;
                geometry_msgs::Vector3 initps;
                geometry_msgs::Vector3 gl;
                geometry_msgs::PoseStamped targetWorld;
                geometry_msgs::Vector3 Follow;
               targetWorld.header.stamp = transform.stamp_;
               targetWorld.header.frame_id = m_worldFrame;
               targetWorld.pose.orientation.x = 0;
               targetWorld.pose.orientation.y = 0;
               targetWorld.pose.orientation.z = 0;
               targetWorld.pose.orientation.w = 1;

               CheckTraj.request.check = true;
               if(ClientCheck.exists())
               {
                if(ClientCheck.call(CheckTraj))
                {
                  TrajectoryComplete = CheckTraj.response.complete;
                }
               }

               if(!TrajectoryComplete)
                { begin = true;
                  ROS_INFO("Holding Position");
                  TempGoals.pose.position.x = 0.3;
                  TempGoals.pose.position.y = 0.0;
                  TempGoals.pose.position.z = 1;
                  TempGoals.pose.orientation = targetWorld.pose.orientation;
                }
                else
                {

                  begin = true;
                  delaycheck = true;
                  OptPoint.request.ask = true;
                  std::vector<double> ptFollow(0, 0);
                  if (ClientOpt.exists())
                    {
                      ROS_ERROR_STREAM("Calling index");
                      if (ClientOpt.call(OptPoint))
                      {   
                                              
                        ptFollow = OptPoint.response.done;
                        Follow.x = ptFollow.at(0);
                        Follow.y = ptFollow.at(1);
                      }
                    }
                    //geometry_msgs::PoseStamped gola;
                //    ROS_ERROR_STREAM("Vector Position: " << Follow);
                 //   ROS_ERROR_STREAM("Vector Point y: " << ptFollow(0));
                }
                
                
              
          
                // Uncomment above 13/11/2017
          
         // delaycheck = kick_bool; // Uncommented on 04/12/2017, something to do with the above condition
               if(begin){
            //    ROS_INFO("Inside outer loop");
                NtOccupied = false;
                TempGoals.pose.position.x = Follow.x;
                TempGoals.pose.position.y = Follow.y;
                targetWorld.pose = TempGoals.pose;
                msg2.linear.x = targetWorld.pose.position.x-transform.getOrigin().x();
               msg2.linear.y = targetWorld.pose.position.y-transform.getOrigin().y();
               norm = sqrt(msg2.linear.x*msg2.linear.x + msg2.linear.y*msg2.linear.y);
              
       
                if(norm > goalDist){
                //   ROS_INFO("Inside inner loop ");
                  NtOccupied = false;
                  hover = false;
                  CallNext = false;

                geometry_msgs::PoseStamped targetDrone;
                checkTime = ros::Time::now().toSec();

        

                m_listener.transformPose(m_frame, targetWorld, targetDrone);
    
               { msg2.linear.x = targetWorld.pose.position.x-transform.getOrigin().x();
               msg2.linear.y = targetWorld.pose.position.y-transform.getOrigin().y();
               norm = sqrt(msg2.linear.x*msg2.linear.x + msg2.linear.y*msg2.linear.y);}

                tfScalar roll, pitch, yaw;
                tf::Matrix3x3(
                    tf::Quaternion(
                        targetDrone.pose.orientation.x,
                        targetDrone.pose.orientation.y,
                        targetDrone.pose.orientation.z,
                        targetDrone.pose.orientation.w
                    )).getRPY(roll, pitch, yaw);

                
                geometry_msgs::Twist msg;
                msg.linear.x = m_pidX.update(0.0, targetDrone.pose.position.x);
                msg.linear.y = m_pidY.update(0.0, targetDrone.pose.position.y);
                msg.linear.z = m_pidZ.update(0.0, targetDrone.pose.position.z);
                msg.angular.z = m_pidYaw.update(0.0, yaw);
                
                // New Addition 05/12/2017
                dtime = ros::Time::now().toSec();
                dtime1 = ros::Time::now().toSec();
               // if(delaycheck && BroadCastReady)
                if(delaycheck)
                {
                  while(dtime1 - dtime <= delay)
                  {
                  m_pubNav.publish(msg);
                  dtime1 = ros::Time::now().toSec();
                  }
                }

                else
                {
                  WrapperTwist = msg;
                  m_pubNav.publish(msg);
                }


                }
              
                else if(norm < goalDist)
                  {
     
                    NtOccupied = true;
                    begin = false;
                    CallNext = true;
                  }
                 }

            
  
}
private:
    std::string m_worldFrame;
    std::string m_frame;
    ros::Publisher m_pubNav;
    ros::Publisher m_error;
    ros::Publisher ch_pose;
    ros::Publisher initpos;
    ros::Publisher Land;
    ros::Publisher plot_Train;
    ros::Publisher bool_delay;
    bool begin;
    bool hover;
    double checkTime;
    double callTime;
    bool NtOccupied;
    
    
  // ros::Publisher goal;
    tf::TransformListener m_listener;
    tf::TransformListener m_listener1;
    tf::TransformListener m_listener2;
    PID m_pidX;
    PID m_pidY;
    PID m_pidZ;
    PID m_pidYaw;
    geometry_msgs::PoseArray goallls;
    geometry_msgs::PoseStamped m_goal;
    geometry_msgs::PoseStamped goal;
    geometry_msgs::PoseArray goals;
    geometry_msgs::PoseStamped TempGoals;
    geometry_msgs::PoseStamped WrapperGoal;
    geometry_msgs::Twist WrapperTwist;
    geometry_msgs::Twist WrapTwist;
    std_msgs::Bool gdl;
    std_msgs::Bool BroadCastReady2;
    ros::Subscriber Postf;
    ros::ServiceServer m_circle;
    ros::Subscriber m_subscribeGoal;
    ros::Subscriber m_subscribeGoals;
    ros::Subscriber ch_delay;
    ros::Subscriber BR_Logic;
    ros::ServiceServer m_serviceLand;
  //  ros::ServiceServer AskforNext;
    ros::ServiceServer DelayLogic;
    ros::ServiceClient ClientAsk;
    ros::ServiceClient Client_delay; 
    ros::ServiceClient Client_Learn;
    ros::ServiceClient Client_Estimate;
    ros::ServiceClient Client_Train;
    ros::ServiceClient Client_BroadCast;
    ros::ServiceClient ClientOpt;
    ros::ServiceClient ClientCheck;
};



int main(int argc, char **argv) {
     //Initializes ROS, and sets up a node
     
     ros::init(argc, argv, "random_bebop_commands");
     ros::NodeHandle n("~");
    

     
     //Ceates the publisher, and tells it to publish
     //to the husky/cmd_vel topic, with a queue size of 100
    // ros::Publisher pub=nh.advertise<geometry_msgs::Twist>("bebop/cmd_vel", 1);
  std::string worldFrame;
  n.param<std::string>("worldFrame", worldFrame, "/world");
  std::string frame;
  n.param<std::string>("frame", frame);

  double frequency;
  n.getParam("frame", frame);
  n.param("frequency", frequency, 50.0);
     
  
     //Sets the loop to publish at a rate of 10Hz


            //Declares the message to be sent
          //  geometry_msgs::Twist msg;
          
        //   msg.linear.x=0.1;
           
          // msg.angular.z=6*double(rand())/double(RAND_MAX)-3;
           //Publish the message
        //   pub.publish(msg);

          //Delays untill it is time to send another message

  
        Controller controller(worldFrame, frame, n);
        controller.run(frequency);



 return 0;
}
