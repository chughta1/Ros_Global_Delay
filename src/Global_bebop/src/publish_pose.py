#!/usr/bin/env python

import rospy
import tf
from geometry_msgs.msg import PoseStamped
import math as mt
import time
import threading as thd


started=False
t=0.0
start_time=0.0

LOCK=thd.Lock()

rospy.init_node('publish_pose', anonymous=True)
worldFrame = rospy.get_param("~worldFrame", "/world")


RATE = rospy.Rate(50.0)







#Publisher
pub = rospy.Publisher(
    name='goal',
    data_class=PoseStamped,
    queue_size=1)

while not rospy.is_shutdown() :
    LOCK.acquire()
    if not started:
        start_time = time.time()
        started=True
    msg = PoseStamped()
    msg.header.seq = 0
    msg.header.stamp = rospy.Time.now()
    msg.header.frame_id = worldFrame
    t=time.time()-start_time
    msg.pose.position.x = mt.cos(0.40*t)
    msg.pose.position.y = mt.sin(0.40*t)
    msg.pose.position.z = z
    quaternion = tf.transformations.quaternion_from_euler(0, 0, 0)
    msg.pose.orientation.x = quaternion[0]
    msg.pose.orientation.y = quaternion[1]
    msg.pose.orientation.z = quaternion[2]
    msg.pose.orientation.w = quaternion[3]
    LOCK.release()    
    #rotation publishing
    msg.header.seq += 1
    pub.publish(msg)
    rospy.logwarn(rotation)
    rospy.logwarn('yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy')
    RATE.sleep()



