#!/usr/bin/env python
import rospy
import numpy as np
import math as mt
import tf
import threading as td
from math import *
from  beb.srv import*
from scipy.spatial.distance import cdist
from geometry_msgs.msg import*
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import PoseArray

# Create Optimization node here

global steps # Make sure this is the same in the other nodes!!
global CurrentPoint
global FirstHit
global PointMem
global TrajRecieved
global TrajValid
global Proceed
global RadiusOfCurvature # Radius of Trajectory in Meters
global ApproachAngle # Angle the drone approaches the trajectory curvature with in Degrees
global frame


FirstHit = True
TrajRecieved = True
TrajValid = True
Proceed = False
RadiusOfCurvature = 0.3
ApproachAngle = 45
steps = 150

GoalInp = rospy.Publisher('GoalInput',Vector3,queue_size=1)

CurrentPoint = np.zeros((1,2))

def getInputs(Inp):
	global TrajRecieved
	global CurrentPoint
	global PointMem
	global Proceed
	global FirstHit
	global RadiusOfCurvature
	global ApproachAngle
	ToSend = np.array([0,0],dtype = np.float64)
	GlInp = Vector3()
	if(TrajValid):
		PointMem = ConfirmTrajectory()
		if(Inp.ask):
			ind = np.argmin(cdist(CurrentPoint,PointMem),1)
			ind = getApproachArc(ind,RadiusOfCurvature,mt.radians(ApproachAngle))
			ToSend[0] = PointMem[ind,0]
			ToSend[1] = PointMem[ind,1]
			GlInp.x = ToSend[0]
			GlInp.y = ToSend[1]
			GlInp.z = 1
			GoalInp.publish(GlInp)
		#	print("The index")
	#		print(ind)
	#		print("The Points")
	#		print(ToSend)
			return OptimizedResponse(ToSend)


def getApproachArc(index,Radius,Angle):
	global steps
	global PointMem
	ArcLength = Radius*Angle
	iteration = ArcLength/(2*mt.pi*Radius/steps)
	approachIndex = index + int(iteration)
	if(approachIndex >= len(PointMem)):
		approachIndex = approachIndex - len(PointMem) - 1 
		return approachIndex
	else:
		return approachIndex


def GetTrajectory():
	rospy.wait_for_service('trajectory')
	#print("Asking....")
	try:
		GetTraj = rospy.ServiceProxy('trajectory', Next_trajectory)
		resp1 = GetTraj(True)
		return resp1.done
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

def ConfirmTrajectory():
	global TrajRecieved
	global TrajValid
	global Proceed
	global FirstHit

	Wrapper = []
	Wrapper = GetTrajectory()

	Nonetype = type(None)
	if(Wrapper !=Nonetype):
		TrajValid = True
		Wrapper = np.reshape(Wrapper,(-1,2))
	#	print("Trajectory Recieved:")
	#	print(Wrapper)
		return Wrapper
	else:
		TrajValid = False
		Proceed = False


def Optimize():
	global CurrentPoint
	global frame
	
	rospy.init_node('Optimizer', anonymous=True)
	frame = rospy.get_param('~frame')
	listener = tf.TransformListener()
	OptimizeDist = rospy.Service('OptimizeDistance',Optimized,getInputs)
	

	rate = rospy.Rate(50.0)

	while not rospy.is_shutdown():
		try:
		 	(trans,rot) = listener.lookupTransform('/world', frame, rospy.Time(0))
		 	CurrentPoint[0,0] = trans[0]
			CurrentPoint[0,1] = trans[1]
		except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
		 	continue
		rate.sleep()

if __name__ == '__main__':
   try:
       Optimize()
   except rospy.ROSInterruptException:
       pass