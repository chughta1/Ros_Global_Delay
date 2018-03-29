#!/usr/bin/env python
import os
import numpy as np
import math as mt
import subprocess
import rospy
import rosbag
from  beb.srv import*
#from std_msgs.msg import Float64
from nav_msgs.msg import Odometry
from matplotlib import pyplot as plt
from std_msgs.msg import Float64
from std_msgs.msg import Empty
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from geometry_msgs.msg import TwistStamped
from geometry_msgs.msg import Pose
from std_msgs.msg import Int64


global StartWrite
global StartLog
global Odm
global DataStep
global InpPos


StartWrite = False
StartLog = False

bag = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest7.bag','w')


def getOdom(odo):
	global Odm
	Odm = Odometry()
	Odm = odo

def getInp(Inp):
	global InpPos
	InpPos = Vector3()
	InpPos = Inp


def WriteBag():
	global Odm
	global InpPos
	od = Odometry()
	od = Odm
	bag.write('/Parrot/',od)
	bag.write('/GoalPoint/',InpPos)


def checkIntersection(radius):
	global Odm
	x = Odm.pose.pose.position.x
	y = Odm.pose.pose.position.y
	v = np.zeros((1,2))
	v[0,0] = x
	v[0,1] = y
	dnorm = abs(radius - np.linalg.norm(v))
	if(dnorm <= 0.05):
		return True
	else:
		return False

def StartLogging(ch):
	global StartLog
	if(ch.data):
		StartLog = True

def LandOut(L):
	if(L==Empty()):
		print("Closing Bags")
		rospy.signal_shutdown("Landed")


def BagOps():
	global StartLog
	global StartWrite
	global DataStep

	rospy.init_node('BagOperations', anonymous=True)
	delay = rospy.get_param('~delay')
	delay = float(delay)
	DataStep = delay*(10**9)
	frame = rospy.get_param('~frame')
	frameod = '/'+frame+'/odom'
	radius = rospy.get_param('~radius')
	rospy.Subscriber(frameod, Odometry, getOdom)
	rospy.Subscriber("GoalInput", Vector3, getInp)
	rospy.Subscriber("Rot_Check", Int64, StartLogging)
	rospy.Subscriber("bebop/land", Empty, LandOut)
	t1 = rospy.get_rostime()
	t1 = t1.nsecs
	while not rospy.is_shutdown():
		if(StartLog):
			gT = False
			if not(StartWrite):
				StartWrite = checkIntersection(radius)
			if(StartWrite):
				t2 = rospy.get_rostime()
				t2 = t2.nsecs
				if(abs(t2 - t1) > DataStep):
					gT = True
					t1 = rospy.get_rostime()
					t1 = t1.nsecs
				if(gT):
					WriteBag()
if __name__ == '__main__':
   try:
       BagOps()
   except rospy.ROSInterruptException:
       pass
   finally:
   		bag.close()




