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


bag1 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightData.bag','r')
bag2 = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest3.bag','r')

def GetBag():
	Tempx = []
	Tempy = []

	TempNoisex = []
	TempNoisey = []

	for topic, msg, t in bag1.read_messages(topics=['/Parrot/']):

		if(topic == '/Parrot/'):
			Wrap = Pose()
			Wrap.position.x = msg.pose.pose.position.x
			Wrap.position.y = msg.pose.pose.position.y
			Wrap.position.z = msg.pose.pose.position.z
			Wrap.orientation.x = msg.pose.pose.orientation.x
			Wrap.orientation.y = msg.pose.pose.orientation.y
			Wrap.orientation.z = msg.pose.pose.orientation.z
			Wrap.orientation.w = msg.pose.pose.orientation.w

			Tempx.append(Wrap.position.x)
			Tempy.append(Wrap.position.y)

	for topic, msg, t in bag2.read_messages(topics=['/Parrot/']):

		if(topic == '/Parrot/'):
			Wrap = Pose()
			Wrap.position.x = msg.pose.pose.position.x
			Wrap.position.y = msg.pose.pose.position.y
			Wrap.position.z = msg.pose.pose.position.z
			Wrap.orientation.x = msg.pose.pose.orientation.x
			Wrap.orientation.y = msg.pose.pose.orientation.y
			Wrap.orientation.z = msg.pose.pose.orientation.z
			Wrap.orientation.w = msg.pose.pose.orientation.w

			TempNoisex.append(Wrap.position.x)
			TempNoisey.append(Wrap.position.y)
	print(len(Tempx))
	print(len(TempNoisex))
	TempXnew = []
	TempYnew = []

	TempXnewNoise = []
	TempYnewNoise = []

	for i in range(22000, len(Tempx)/2-19000):
		TempXnew.append(Tempx[i])
		TempYnew.append(Tempy[i])

	for i in range(0, len(TempNoisex)/4):
		TempXnewNoise.append(TempNoisex[i])
		TempYnewNoise.append(TempNoisey[i])


	xS = np.linspace(0,2*mt.pi,len(TempXnew))
	xSin1 = np.linspace(0,2*mt.pi,len(TempYnew))
	ySin1 = 0.3*np.sin(xSin1)


	yS = np.linspace(0,2*mt.pi,len(TempYnew))
	yCos1 = np.linspace(0,2*mt.pi,len(TempYnew))
	xCos1 = 0.3*np.cos(yCos1)

	xSN = np.linspace(0,2*mt.pi,len(TempXnewNoise))
	xSin2 = np.linspace(0,2*mt.pi,len(TempXnewNoise))
	ySin2 = 0.3*np.sin(xSin2)

	ySN = np.linspace(0,2*mt.pi,len(TempYnewNoise))
	yCos2 = np.linspace(0,2*mt.pi,len(TempYnewNoise))
	xCos2 = 0.3*np.cos(yCos2)

	ErrorGPx = []
	ErrorGPy = []

	Errorx = []
	Errory = []

	for i in range(0, len(xCos1)):
		if(xCos1[i] != 0):
			ErrorGPx.append(100*(xCos1[i]-TempXnew[i])/(xCos1[i]))
		if(ySin1[i] >= 0.01 or ySin1[i] <= -0.01):
			ErrorGPy.append(100*(ySin1[i]-TempYnew[i])/(ySin1[i]))

	for i in range(0, len(xCos2)):
		if(xCos2[i] >= 0.001 or xCos2[i] <= -0.001):
			Errorx.append(100*(xCos2[i]-TempXnewNoise[i])/(xCos2[i]))
		if(ySin2[i] >= 0.01 or ySin2[i] <= -0.01):
			Errory.append(100*(ySin2[i]-TempYnewNoise[i])/(ySin2[i]))

#	ErrorGPx = np.absolute(ErrorGPx)
	ErrorGPx = np.mean(ErrorGPx)
	print(ErrorGPx)

#	ErrorGPy = np.absolute(ErrorGPy)
	ErrorGPy = np.mean(ErrorGPy)
	print(ErrorGPy)

	Errorx = np.absolute(Errorx)
	Errorx = np.mean(Errorx)
	#print("X")
	print(Errorx)

	Errory = np.absolute(Errory)
	Errory = np.mean(Errory)
	#print("Y")
	print(Errory)

	plt.figure()
	plt.plot(xS, TempXnew, '-bx',label = "Actual")
	plt.plot(xS, xCos1, '-rx',label = "Desired")
	#plt.ylim([-1.0, 1.0])
	#plt.xlim([-1.0, 1.0])
	plt.xlabel("Phase Angle")
	plt.ylabel("y[m]")
	plt.legend()
	plt.title("With GP Filter - X")

	plt.figure()
	plt.plot(yS, TempYnew, '-bx',label = "Actual")
	plt.plot(yS, ySin1, '-rx',label = "Desired")
	#plt.ylim([-1.0, 1.0])
	#plt.xlim([-1.0, 1.0])
	plt.xlabel("Phase Angle")
	plt.ylabel("y[m]")
	plt.legend()
	plt.title("With GP Filter - y")
#	plt.show()

	plt.figure()
	plt.plot(xSN, TempXnewNoise, '-bx',label = "Actual")
	plt.plot(xSN, xCos2, '-rx',label = "Desired")
	#plt.ylim([-1.0, 1.0])
	#plt.xlim([-1.0, 1.0])
	plt.xlabel("Phase")
	plt.ylabel("y[m]")
	plt.legend()
	plt.title("Without GP Filter -x")

	plt.figure()
	plt.plot(ySN, TempYnewNoise, '-bx',label = "Actual")
	plt.plot(ySN, ySin2, '-rx',label = "Desired")
	#plt.ylim([-1.0, 1.0])
	#plt.xlim([-1.0, 1.0])
	plt.xlabel("Phase")
	plt.ylabel("y[m]")
	plt.title("Without GP Filter - y")
	plt.legend()
	#plt.show()
	


def PlotOps():
	rospy.init_node('PlotOperations', anonymous=True)

	GetBag()


if __name__ == '__main__':
   try:
       PlotOps()
   except rospy.ROSInterruptException:
       pass

