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

bag1 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest1.bag','r')
bag2 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest2.bag','r')
bag3 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest3.bag','r')
bag4 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest4.bag','r')
bag5 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest5.bag','r')
bag6 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest6.bag','r')
bag7 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest7.bag','r')

global Bilbo
global numBags
global xPos
global yPos
global xInp
global yInp
xInp = [] 
yInp = [] 
xPos = [] 
yPos = []
numBags = 1
#Bilbo = [bag1 bag2 bag3 bag4 bag5 bag6]
Bilbo = [bag7]


def Baggins(nBags):
	for i in range(0,nBags):
		bag = Bilbo[i]
		for topic, msg, t in bag.read_messages(topics=['/Parrot/']):
			xPos.append(msg.pose.pose.position.x)
			yPos.append(msg.pose.pose.position.y)
		for topic, msg, t in bag.read_messages(topics=['/GoalPoint/']):
			xInp.append(msg.pose.pose.position.x)
			yInp.append(msg.pose.pose.position.y)

	Y = np.zeros((len(xPos)),2)
	X = np.zeros((len(xInp)),2)
	for k in range(0,len(Y)):
		Y[k,0] = xPos[k]
		Y[k,1] = yPos[k]
		X[k,0] = xInp[k]
		X[k,1] = yInp[k]

	return X,Y

def SetupModel():
	k1 = gpflow.kernels.Matern52(input_dim=2)
	k2 = gpflow.kernels.RBF(input_dim=2)
	k = k1 + k2
	X,Y = Baggins(Bilbo)
	m = gpflow.models.GPR(X, Y, kern=k)
	opt = gpflow.train.ScipyOptimizer()
	opt.minimize(m)
	return m

def ShowPrediction():
	rospy.init_node('GP_Predicter', anonymous=True)
	xx = np.linspace(-0,4, 0.4, 100).reshape(100, 1)
	yy = np.linspace(-0.4, 0.4, 100).reshape(100, 1)
	xt = np.zeros((100,2))
	for i in range(0,100):
		xt[i,0] = xx[i]
		xt[i,1] = yy[i]
	Model = SetupModel()
	mean, var = model.predict_y(xt)
	print(np.shape(mean))
	#plt.plot(X, Y, 'kx', mew=2)
	#plt.plot(xx, mean[:,0], lw=2)
	plt.plot(mean[:,0], mean[:,1], lw=2)

#_ = plt.fill_between(xx[:,0], mean[:,0] - 2*np.sqrt(var[:,0]), mean[:,0] + 2*np.sqrt(var[:,0]), color=line.get_color(), alpha=0.2)
	plt.show()
