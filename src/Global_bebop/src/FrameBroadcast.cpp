#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include "beb/CheckLearn.h"
#include "beb/Estimate.h"
#include "beb/TrReady.h"
#include "beb/SendDelayLogic.h"
#include <geometry_msgs/Twist.h> 
#include <geometry_msgs/PoseArray.h>
#include <ros/console.h>
#include <string>
#include <cstdlib>
#include <iostream>

// Convert this to python!!! No other option here


// Make FrameBroadcaster here, the broadcaster recieves confirmation from the TrainingBag
// established the "Predict" frame. This frame is used to broadcast the estimated
// position. Build service to recieve confirmation of Training then start broadcasting!!!
    
    int main(int argc, char** argv){
      ros::init(argc, argv, "my_tf_broadcaster");
      ros::NodeHandle node;
      ros::ServiceClient Client_Estimate;
      ros::ServiceClient Client_Train;
      ros::ServiceClient Client_Learn;
      ros::ServiceClient getDelay;
      Client_Train = node.serviceClient<beb::TrReady>("TrainingReady");
      Client_Estimate = node.serviceClient<beb::Estimate>("EstGen");
      Client_Learn = node.serviceClient<beb::CheckLearn>("LearnLogic");
      getDelay = node.serviceClient<beb::SendDelayLogic>("Delaylog");
    
      //std::string worldFrame;
      //node.param<std::string>("worldFrame", worldFrame, "/world");


      tf::TransformBroadcaster br;
      tf::Transform transform;
      bool TrainReady = false;
      bool LearningReady = false;
      bool dLogic = false;
   
     ros::Rate rate(50.0);
     while (node.ok()){
      geometry_msgs::Vector3 est_v;
      beb::TrReady TrR;
      beb::Estimate est;
      beb::CheckLearn ch_Learn;
      beb::SendDelayLogic SDL;
      TrR.request.askTrain = true;
      if(!TrainReady)
      {if(Client_Train.exists())
      {                    
        if(Client_Train.call(TrR))
        {
          TrainReady = TrR.response.resTrain;
          ROS_ERROR_STREAM("Bool:" << TrainReady);
        }
      }}

      if(!LearningReady)
      {if(Client_Learn.exists())
    {
      if(Client_Learn.call(ch_Learn))
        {
          LearningReady = ch_Learn.response.LearnConf;
        }
    }}

    if(LearningReady && TrainReady)
    {
      SDL.request.askdb = true;
      if(getDelay.exists()){
        if(getDelay.call(SDL))
          {dLogic = SDL.response.senddb;}
      }
      if(dLogic)
      {est.request.askEstimate = true;
        if(Client_Estimate.exists())
        {
          if(Client_Estimate.call(est))
          {            
      est_v = est.response.Est;
       transform.setOrigin( tf::Vector3(est_v.x, est_v.y, 1.0) );
       transform.setRotation( tf::Quaternion(0, 0, 0, 1) );
       br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "/world", "Predict"));
          }
        }
    }
  }

       
       rate.sleep();
     }
     return 0;
   };