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
global checkDelay
global FirstCall
FirstCall = True
checkDelay = False
InpPos = Vector3()


StartWrite = False
StartLog = False

#bag = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest13.bag','w')
bag = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite5.bag','w')

def getOdom(odo):
	global Odm
	Odm = Odometry()
	Odm = odo

def getInp(Inp):
	global InpPos
	InpPos = Vector3()
	if(Inp is not None):
		InpPos = Inp


def WritePoseBag():
	global Odm
	global InpPos
	od = Odometry()
	od = Odm
	if(InpPos is not None):
		bag.write('/Parrot/',od)
		

def WriteInpBag(InpP):
	if(InpP is not None):
		bag.write('/GoalPoint/',InpP)


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


def checkLap(x_old,y_old):
	global Odm
	global FirstCall
	FirstCall = False
	x_new = Odm.pose.pose.position.x
	y_new = Odm.pose.pose.position.y
	ang_old = mt.atan2(y_old,x_old)
	ang_new = mt.atan2(y_new,x_new)
	if(ang_old < 0 and ang_new > 0):
		return True



def StartLogging(ch):
	global StartLog
	if(ch.data):
		StartLog = True

def LandOut(L):
	if(L==Empty()):
		print("Closing Bags")
		rospy.signal_shutdown("Landed")


def DelayLogic(DelayValue):
	global checkDelay
	if(DelayValue.data):
		checkDelay = True


def BagOps():
	global StartLog
	global StartWrite
	global DataStep
	global InpPos
	global checkDelay
	global Odm
	global FirstCall

	rospy.init_node('BagOperations', anonymous=True)
	delay = (1/120)
	delay = float(delay)
	#DataStep = (1/120)*(10**9)
	frame = rospy.get_param('~frame')
	frameod = '/'+frame+'/odom'
	radius = rospy.get_param('~radius')
	rospy.Subscriber(frameod, Odometry, getOdom)
	rospy.Subscriber("GoalInput", Vector3, getInp)
	rospy.Subscriber("Rot_Check", Int64, StartLogging)
	rospy.Subscriber("bebop/land", Empty, LandOut)
	rospy.Subscriber("DelayDrone", Int64, DelayLogic)
	t1 = rospy.Time.now()
	t2 = rospy.Time.now()
	rate = rospy.Rate(50.0)
	ValidWrite = False
	while not rospy.is_shutdown():
		if(InpPos.x == 0 and InpPos.y == 0):
			ValidWrite = False
		else:
			ValidWrite = True
		if(StartLog):
			gT = False
			if not(StartWrite):
				StartWrite = checkIntersection(radius)
			if(StartWrite):	
				if(ValidWrite):
					x_check = Odm.pose.pose.position.x
					y_check = Odm.pose.pose.position.y
					#print(InpPos)
					# WriteInpBag(InpPos)
					while(abs(t2 - t1) < rospy.Duration(delay)):
					 	t2 = rospy.Time.now()
					t1 = rospy.Time.now()
					if(checkDelay):
						print("Writing")
						WritePoseBag()
					cL = checkLap(x_check,y_check)
					if(cL and checkDelay and not FirstCall):
						print("Shutting Down")
						rospy.signal_shutdown("Circle Complete")

if __name__ == '__main__':
   try:
       BagOps()
   except rospy.ROSInterruptException:
       pass
   finally:
   		bag.close()




