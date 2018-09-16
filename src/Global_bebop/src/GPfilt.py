#!/usr/bin/env python
import gpflow
import numpy as np
from matplotlib import pyplot as plt
plt.style.use('ggplot')
import tensorflow as tf
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


#Different batteries give different entropies
# Change bag 9

bag1 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite.bag','r')
bag2 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite1.bag','r')
bag3 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite2.bag','r')
bag4 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite3.bag','r')
bag5 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite4.bag','r')
bag6 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite5.bag','r')
bag7 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite6.bag','r')
bag8 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightReWrite7.bag','r')


global Bilbo
global numBags
global xPos
global yPos
global xInp
global yInp
global DoneTraining
global InpPos
global mean
global TrajCheck
global MeanEst
global StartGP
StartGP = False
GP_Es = rospy.Publisher('GP_Est',Vector3,queue_size=1)
MeanEst = np.zeros((1,2))
TrajCheck = False
InpPos = Vector3()
DoneTraining = False
xInp = [] 
yInp = [] 
xPos = [] 
yPos = []

Bilbo = [bag1, bag2, bag3, bag4, bag5, bag6, bag7, bag8]#, bag9, bag10, bag11]#, bag12]
numBags = len(Bilbo)
#Bilbo = [bag7]

def Baggins(nBags):
	global Bilbo
	for i in range(0,nBags):
		bag = Bilbo[i]
		for topic, msg, t in bag.read_messages(topics=['/Parrot/']):
			xPos.append(msg.pose.pose.position.x)
			yPos.append(msg.pose.pose.position.y)
		for topic, msg, t in bag.read_messages(topics=['/GoalPoint/']):
			xInp.append(msg.x)
			yInp.append(msg.y)
		print(len(xPos))
	Y = np.zeros((len(xPos),2))
	X = np.zeros((len(xInp),2))
	for k in range(0,len(Y)):
		Y[k,0] = xPos[k]
		Y[k,1] = yPos[k]
		X[k,0] = xInp[k]
		X[k,1] = yInp[k]

	return X,Y

def getInp(Inputs):
	global InpPos
	InpPos = Vector3()
	InpPos = Inputs


def SetupModel():
	global numBags
	k1 = gpflow.kernels.Matern52(input_dim=2)
	k2 = gpflow.kernels.RBF(input_dim=2)
	k = k1 + k2
	X,Y = Baggins(numBags)
	m = gpflow.gpr.GPR(X, Y, kern=k)
	_ = m.optimize(maxiter=400)
	return m, True

def BroadCastReady(BCR):
	global DoneTraining
	if(BCR.breadyask):
		return broadReadyResponse(DoneTraining)

def SendEstimate(SE):
	global mean
	global TrajCheck
	global MeanEst
	
	if(SE.askEstimate and TrajCheck and StartGP):
		Est_pos.x = MeanEst[0,0]
		Est_pos.y = MeanEst[0,1]
		Est_pos.z = 1.0
		if(np.linalg.norm(MeanEst)>0):
			
			return EstimateResponse(Est_pos)

def TrajComplete(Comp):
	global TrajCheck
	if(Comp.data):
		TrajCheck = True

def getGP(gp):
	global StartGP
	if(gp.data):
		StartGP = True

def ShowPrediction():
	global DoneTraining
	global InpPos
	global mean
	global TrajCheck
	global MeanEst
	rospy.init_node('GP_Predicter', anonymous=True)
	rospy.Subscriber("GoalInput", Vector3, getInp)
	rospy.Subscriber("Rot_Check", Int64, TrajComplete)
	rospy.Subscriber("StartingGPFilter", Int64, getGP)
	BReady = rospy.Service('BroadCastingReady',broadReady,BroadCastReady)
	S_est = rospy.Service('GettingEstimate',Estimate,SendEstimate)
	Model, DoneTraining = SetupModel()
	print("Done Learning")
	Start = False
	rate = rospy.Rate(50.0)
	while not rospy.is_shutdown():
		Est_pos = Vector3()
		v = np.zeros((1,2))
		v[0,0] = InpPos.x
		v[0,1] = InpPos.y
		CheckValidInputs = np.linalg.norm(v)
		if(CheckValidInputs > 0):
			Start = True
		if(TrajCheck and Start):
			xt = np.zeros((1,2))
			xt[0,0] = InpPos.x
			xt[0,1] = InpPos.y
			mean, var = Model.predict_y(xt)
			MeanEst[0,0] = mean[0,0]
			MeanEst[0,1] = mean[0,1]
			Est_pos.x = MeanEst[0,0]
			Est_pos.y = MeanEst[0,1]
			Est_pos.z = 1.0
			GP_Es.publish(Est_pos)
		rate.sleep()

if __name__ == '__main__':
   try:
       ShowPrediction()
   except rospy.ROSInterruptException:
       pass
