#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <time.h>
#include <stdlib.h>
#include <math.h>

bool started = false;
time_t start_time;
time_t t;
double sec;

int main(int argc, char **argv) {
     //Initializes ROS, and sets up a node
     ros::init(argc, argv, "publish_pose");
     ros::NodeHandle nh;
     std::string worldFrame;
     //Ceates the publisher, and tells it to publish
     //to the husky/cmd_vel topic, with a queue size of 100
     ros::Publisher pub=nh.advertise<geometry_msgs::PoseStamped>("goal", 1);
     nh.getParam("worldFrame", worldFrame);
     //Sets up the random number generator

     //Sets the loop to publish at a rate of 50Hz
     ros::Rate rate(50);

       while(ros::ok()) {
            //Declares the message to be sent
           geometry_msgs::PoseStamped msg;
           
           if(!started)
           	{time(&start_time);
           	started = true;}
           msg.header.seq = 0;
           msg.header.stamp = ros::Time().now();
           msg.header.frame_id = worldFrame;
           time(&t);
           sec=(t,start_time);
           msg.pose.position.x = cos(0.40*sec);
           msg.pose.position.y = sin(0.40*sec);
           msg.pose.position.z = 1;
           msg.pose.orientation.x = 0;
           msg.pose.orientation.y = 0;
           msg.pose.orientation.z = 0;
           msg.pose.orientation.w = 1;
          
           pub.publish(msg);
           msg.header.seq += 1;
          //Delays untill it is time to send another message
          rate.sleep();
         }
}