#!/usr/bin/env python
import rospy
import numpy as np
import math as mt
import matplotlib.pyplot as plt
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

plt.ion()

global x_coord
global y_coord
global act
global coord

act = False
coord = False


global x_actual
global y_actual

global Pred_x
global Pred_y

global frame


plt.figure(num=None, figsize=(12, 12))


x_coord = 0.0
y_coord = 0.0
th_coord = 0.0


def getPos(Pos):
	global x_actual
	global y_actual
	x_actual=Pos.pose.pose.position.x
	y_actual=Pos.pose.pose.position.y
	plt.plot(x_actual, y_actual, 'bx')
	
	#plt.show()
	#plt.pause(0.005)

def plot_callback(plot_d):
	global x_coord
	global y_coord
	x_coord = plot_d.x
	y_coord = plot_d.y
	coord = True
	plt.plot(x_coord, y_coord, 'rx')
	#plt.show()
	#plt.pause(0.005)

def GP_pred(pr):
	xp = pr.x
	yp = pr.y
	plt.plot(xp, yp, 'go')


def Plot_Del(Dp):
	xd = Dp.x
	yd = Dp.y
	plt.plot(xd, yd, 'go')


def plotter():
	global act
	global coord
	global x_coord
	global y_coord

	global x_actual
	global y_actual

	#act = False
	#coord = False


	rospy.init_node('plotter', anonymous=True)
	frame = rospy.get_param('~frame')
	frameod = '/'+frame+'/odom'
	rospy.Subscriber("plotting_data", Vector3, plot_callback)
	rospy.Subscriber(frameod, Odometry, getPos)
	rospy.Subscriber("GP_Est",Vector3, GP_pred)
	#rospy.Subscriber("DelPub",Vector3, Plot_Del)

	#plt.show()
	plt.subplot(1, 1, 1)
	
	plt.ylim([-1.5, 1.5])
	plt.xlim([-1.5, 1.5])
	plt.xlabel("x[m]")
	plt.ylabel("y[m]")
	plt.grid(True)
	#plt.legend(['MPC Path','Actual path'])
		

		#plt.legend()
	#plt.pause(0.0001)
	plt.show(block = True)
	#rospy.spin()

if __name__ == '__main__':
    plotter()
