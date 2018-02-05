#!/usr/bin/env python
import GPflow
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
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from geometry_msgs.msg import TwistStamped
from geometry_msgs.msg import Pose
import tf

#ROS node for delay and state prediction
#Learn the delay on a rolling basis
#Learn the previous inputs on a rolling basis


global delaylogic
global x_actual
global y_actual
global a
global MyData
global Learning
global revolutions
global FullRotation
global Modelx
global Modely
global Modelthm
global status
global P_angle
global GP_out
global startTime
global DataStep
global X_in
global Odm
global closed
closed = False # For use in the function below
Odm = Odometry()

DataStep = 0.2*(10**9)

GP_out = Vector3()
status = False
FullRotation = False
revolutions = 1

U_in = []
X_in = []
MyData = TwistStamped()
a = 0
delaylogic = False
Learning = False

#Alter the LearnStates function so multiple bags can be learned. DO THIS TOMORROW!

bag = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset1.bag','r')
#bag_one = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset4.bag','r')
#bag_two = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset5.bag','r')
#bag_three = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset6.bag','r')
#bag_four = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset7.bag','r')
#bag1 = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset11.bag','w')
bag1 = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/NewDelay.bag','w')

def sendDelay(askd):
	global delaylogic
	mu = 0.2 # Change this when adjusting delay
	sigma = 0.05
	if(askd.askDelay):
		delay = np.random.normal(mu, sigma)
		delay = abs(delay)
		delaylogic = True
		#print("Generating Random Delay")
		return randomDelayResponse(delay)


def GetEverything():
	global status

	U = GetData1()
	LearnStates()
	status = True


def LearnEverything(req):
	global Modelx
	global Modely
	global Modelthm
	global status
	if(status):
		return CheckLearnResponse(status)
	else:
		return CheckLearnResponse(False)


def SetupKernel(TimeArray):
	xt = np.linspace(0,len(TimeArray),len(TimeArray))
	xt = np.reshape(xt,(len(xt),1))
	k = GPflow.kernels.Matern52(1, lengthscales=0.5)
	meanf = GPflow.mean_functions.Linear(1,0)
	m = GPflow.gpr.GPR(xt,TimeArray, k, meanf)
	m.likelihood.variance = 0.08
	return m

def checkRevolutions(th_angle):
	global FullRotation
	global revolutions
	global P_angle
	P_angle = th_angle.data
	ch_rev = th_angle.data #+ revolutions*2*mt.pi
        if(ch_rev > 2.8*mt.pi*revolutions):
          revolutions = revolutions + 1
          FullRotation = True

def GetData1():
	print("Getting bag")
	im = 0
	for topic, msg, t in bag.read_messages(topics=['/Prolong']):
		#t = t.secs
		if(topic == '/Prolong'):
			Wrap = Twist()
			#timeSync.append(t.secs)
			Wrap.linear.x = msg.twist.linear.x
			Wrap.linear.y = msg.twist.linear.y
			Wrap.linear.z = msg.twist.linear.z
			Wrap.angular.z = msg.twist.angular.z

			if(im % 3200 == 0):
				U_in.append(Wrap)
			im = im + 1
	#print(len(U_in))
	return U_in

def GetData2():
	global DataStep
	print("Getting bag")
	im = 0
	Tempx = []
	Tempy = []
	t1 = rospy.get_rostime()
	t1 = t1.nsecs
	gT = False
	for topic, msg, t in bag.read_messages(topics=['/Parrot/']):
		t2 = t.nsecs

		if(abs(t2 - t1) > (DataStep)):
			gT = True
			t1 = t.nsecs

		if(topic == '/Parrot/' and gT):
			Wrap = Pose()
			gT = False
			Wrap.position.x = msg.pose.pose.position.x
			Wrap.position.y = msg.pose.pose.position.y
			Wrap.position.z = msg.pose.pose.position.z
			Wrap.orientation.x = msg.pose.pose.orientation.x
			Wrap.orientation.y = msg.pose.pose.orientation.y
			Wrap.orientation.z = msg.pose.pose.orientation.z
			Wrap.orientation.w = msg.pose.pose.orientation.w
			
			if(im % 1 == 0):
				Tempx.append(Wrap.position.x)
				Tempy.append(Wrap.position.y)
				X_in.append(Wrap)
			im = im + 1

	print(len(X_in))
	return X_in





def LearnStates():
	global Modelx
	global Modely
	global Modelthm
	states = GetData2()
	xx = np.zeros((len(states),1)) # X
	yy = np.zeros((len(states),1)) # Y
	thm = np.zeros((len(states),1)) # Yaw
	for i in range(0,len(states)):
		WrapOrient = (states[i].orientation.x,states[i].orientation.y,states[i].orientation.z,states[i].orientation.w)
		#WrapOrient.orientation = states[i].orientation
		euler = tf.transformations.euler_from_quaternion(WrapOrient)
		xx[i,0]=(states[i].position.x)
		yy[i,0]=(states[i].position.y)
		thm[i,0]=(euler[2])

	Modelx = SetupKernel(xx)
	Modely = SetupKernel(yy)
	Modelthm = SetupKernel(thm)
	_ = Modelx.optimize(maxiter=200)
	_ = Modely.optimize(maxiter=200)
	_ = Modelthm.optimize(maxiter=200)




def GP_Predict(TimeIn):
	global P_angle
	global revolutions
	global Modelx
	global Modely
	global Modelthm
	global GP_out
	global startTime
	global DataStep
	#P_angle = float(P_angle)
	#tp = Float64()
	# tp = abs(TimeIn - startTime)
	# print("Time In")
	# print(TimeIn)
	# print("Start Time")
	# print(startTime)
	# print("Time Diff")
	# print(tp)
	# x_pred = tp/DataStep
	# print("The prediction index:")
	# print(x_pred)
	#x_pred = (abs(P_angle - tp)/(4*mt.pi*revolutions))
	#print("THe prediction index:")
	x_pred = TimeIn
	#print(x_pred)
	# if(x_pred>313):
	# 	startTime = TimeIn
	# 	x_pred = x_pred % 313
	# 	x_pred = int(x_pred)
	# 	print(x_pred)
	xpp = np.zeros((1,1))
	xpp[0,0] = x_pred
	mu_x,var_x = Modelx.predict_f(xpp)
	mu_y,var_y = Modely.predict_f(xpp)
	mu_th,var_th = Modelthm.predict_f(xpp)
	GP_out.x = mu_x
	GP_out.y = mu_y
	GP_out.z = mu_th
	


def TrainData(getU):
	global delaylogic
	global a
	global MyData
	MyData = getU

def getOdom(odo):
	global Odm
	Odm = Odometry()
	Odm = odo

def WriteBag():
	global Odm
	global MyData
	global writeCount
	global closed
	#closed = False
	#writeCount = writeCount + 1
	od = Odometry()
	od = Odm
	Inp = Twist()
	Inp = MyData
	#if(writeCount <= 300):
	if(not closed):
		bag1.write('/Parrot/',od) 
		bag1.write('/Prolong',Inp)
	if(FullRotation and not closed):
		bag.close()
		bag1.close()
		print("Closing bags")
		closed = True


def LearnModel():
	global x_actual
	global y_actual
	global a
	global MyData
	global Modelx
	global Modely
	global Modelthm
	global status
	global GP_out
	global startTime
	global X_in
	dur = 5.0
	thrust = 0.5*9.81
	freq = 50.0
	

	rospy.init_node('LearnModel', anonymous=True)
	startTime = rospy.get_rostime()
	startTime = startTime.nsecs
	
	#bag = rosbag.Bag('Training.bag','w')
	rospy.Subscriber("/InputPast", Twist, TrainData)
	rospy.Subscriber("/getTheta", Float64, checkRevolutions)
	rospy.Subscriber("/Parrot_umar/odom", Odometry, getOdom) #Change this when using different models!!!!
	prolongInput = rospy.Publisher('Prolong',TwistStamped,queue_size=1)

	plot_predict_GP = rospy.Publisher('GP_Prediction',Vector3,queue_size=1)

	plot_predict = rospy.Publisher('predict_plot',Vector3,queue_size=1)
	Askdelay = rospy.Service('DelayGen',randomDelay,sendDelay)
	LearnStuff = rospy.Service('LearnLogic',CheckLearn,LearnEverything)
	GetEverything()
	#LearnData()
	rate = rospy.Rate(freq)
	#Gp_it = 0

	while not rospy.is_shutdown():
		prolongInput.publish(MyData)
		# currTime = rospy.get_rostime()
		# currTime = currTime.nsecs
		# if(abs(currTime - startTime) >= (DataStep)):
		# 	startTime = currTime
		# 	Gp_it = Gp_it + 1
		# if(Gp_it > len(X_in)):
		# 	Gp_it = 0
		if(status):
		# 	GP_Predict(Gp_it)
		# 	plot_predict_GP.publish(GP_out)
			WriteBag()
	rate.sleep()


if __name__ == '__main__':
   try:
       LearnModel()
   except rospy.ROSInterruptException:
       pass