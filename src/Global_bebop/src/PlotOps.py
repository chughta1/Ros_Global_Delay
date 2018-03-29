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


bag = rosbag.Bag('/home/umar/catkin_ws/src/Global_bebop/src/BagFiles/FlightTest6.bag','r')

def GetBag():
	Tempx = []
	Tempy = []

	for topic, msg, t in bag.read_messages(topics=['/Parrot/']):

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
	print(len(Tempx))
	plt.plot(Tempx, Tempy, '-go')
	plt.ylim([-1.0, 1.0])
	plt.xlim([-1.0, 1.0])
	plt.xlabel("x[m]")
	plt.ylabel("y[m]")
	plt.show()


def PlotOps():
	rospy.init_node('PlotOperations', anonymous=True)

	GetBag()


if __name__ == '__main__':
   try:
       PlotOps()
   except rospy.ROSInterruptException:
       pass

