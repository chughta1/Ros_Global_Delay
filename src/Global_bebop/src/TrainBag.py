#!/usr/bin/env python
import rospy
import GPflow
import os
import rosbag
import numpy as np
import math as mt
from  beb.srv import*
from std_msgs.msg import Bool
from scipy.spatial.distance import cdist
from geometry_msgs.msg import TwistStamped
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from nav_msgs.msg import Odometry
import matplotlib.pyplot as plt
from numpy import linalg as LA
import tf

#plt.ion()
#Creat a smaller trajectory, this is fucking huge, small rectangle works


#Use rosbag for flight data!!!!!!!!

global x_actual
global y_actual

global Modelux
global Modeluy
global Modeluth
global U_in
global DataStep
global EstVec
global TrainReady
global Modelx
global Modely
global Modelth
global bilbo
global X_in
global lengthlist
global gdl
gdl = False
TrainReady = False
EstVec = Vector3()
lengthlist = []
bilbo = []
DataStep = 0.35*(10**9)

#bag = rosbag.Bag('Flight1.bag','r')
# bag_one = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset4.bag','r')
# bag_two = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset5.bag','r')
# bag_three = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset6.bag','r')
# bag_four = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset7.bag','r')
# bag_five = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset8.bag','r')
# bag_six = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset9.bag','r')
# bag_seven = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset10.bag','r')
#bag_eight = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/subset11.bag','r')
bag_one = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight.bag','r')
bag_two = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight1.bag','r')
bag_three = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight2.bag','r')
bag_four = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight3.bag','r')
bag_five = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight4.bag','r')
bag_six = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight5.bag','r')
bag_seven = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight6.bag','r')
bag_eight = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight7.bag','r')
bag_nine = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight8.bag','r')
bag_ten = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight9.bag','r')
bag_eleven = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight10.bag','r')
bag_twelve = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight11.bag','r')
bag_thirteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight12.bag','r')
bag_fourteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight13.bag','r')
bag_fifteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight14.bag','r')
bag_sixteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight15.bag','r')
bag_seventeen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight16.bag','r')
bag_eighteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/ExpTest1.bag','r')
bag_nineteen = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/ExpTest2.bag','r')
bag_twenty = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/ExpTest3.bag','r')
bag_twentyone = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/ExpTest4.bag','r')
bag_twentytwo = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight21.bag','r')
timeSync = []
bag_read = rosbag.Bag('/home/chuggi/catkin_ws/src/bebop_drive/BagFiles/newFlight3.bag','r')
U_in = []
X_in = []


def SendEstimate(Est):
	global EstVec
	if(Est.askEstimate):
		return EstimateResponse(EstVec)

def SendTrain(Tr):
	global TrainReady
	if(Tr.askTrain and TrainReady):
		#print("Training Complete")
		return TrReadyResponse(True)




def BilboBaggins():
#	bilbo.append(bag_one)
#	bilbo.append(bag_two)
#	bilbo.append(bag_three)
#	bilbo.append(bag_four)
#	bilbo.append(bag_five)
#	bilbo.append(bag_six)
#	bilbo.append(bag_seven)
#	bilbo.append(bag_eight)
#	bilbo.append(bag_nine)
#	bilbo.append(bag_ten)
#	bilbo.append(bag_eleven)
#	bilbo.append(bag_twelve)
#	bilbo.append(bag_thirteen)
#	bilbo.append(bag_fourteen)
#	bilbo.append(bag_fifteen)
#	bilbo.append(bag_sixteen)
#	bilbo.append(bag_seventeen)
	bilbo.append(bag_eighteen)
#	bilbo.append(bag_nineteen)
#	bilbo.append(bag_twenty)
#	bilbo.append(bag_twentyone)
#	bilbo.append(bag_twentytwo)
	return bilbo

def GetData1(bag,lenlist): 
	print("Getting Input bag") 
	im = 0
	t1 = 0
	gU = False
	for topic, msg, t in bag.read_messages(topics=['/Prolong']):
		t2 = t.nsecs
		if(abs(t2 - t1) >= (2.2*(10**9))):
			gU = True
			t1 = t.nsecs
		if(topic == '/Prolong' and gU):
			Wrap = Twist()
			#timeSync.append(t.secs)
			Wrap.linear.x = msg.twist.linear.x
			Wrap.linear.y = msg.twist.linear.y
			Wrap.linear.z = msg.twist.linear.z
			Wrap.angular.z = msg.twist.angular.z

			if(im % 50 == 0):
				U_in.append(Wrap)
			im = im + 1
	#print("Input length")
	#print(len(U_in))
	bag.close()
	return U_in

def GetData2(bag):
	global lengthlist
	global DataStep
	X_in = []
	print("Getting State bag")
	im = 0
	Tempx = []
	Tempy = []
	#t1 = rospy.get_rostime()
	t1 = 0
	gT = False
	for topic, msg, t in bag.read_messages(topics=['/Parrot/']):
		t2 = t.nsecs
		#print(msg)
		#if(len(X_in)<10000):
		if(abs(t2 - t1) >= (DataStep)):

			gT = True
			t1 = t.nsecs
		if(topic == '/Parrot/' and gT):
			Wrap = Pose()
			#print(msg.pose.pose.orientation)
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
	print("State length")
	print(len(X_in))
	lengthlist.append(len(X_in))
	return X_in



def LearnInputs(Inputs):
	global Modelux
	global Modeluy
	global Modeluth
	global U_in
	global lengthlist
	Modelux = []
	Modeluy = []
	Modeluth = []
	for m in range(0,len(Inputs)):
		ln = lengthlist[m]
		inp = GetData1(Inputs[m],ln)
		U_in = []
		ux = np.zeros((len(inp),1)) # X - in
		uy = np.zeros((len(inp),1)) # Y - in
		uth = np.zeros((len(inp),1)) # Yaw - in

		for i in range(0,len(inp)):
			WrapTwist = Twist()
			ux[i,0] = inp[i].linear.x
			uy[i,0] = inp[i].linear.y
			uth[i,0] = inp[i].angular.z
		#print((ux[2,0]))
		xt = np.linspace(1,len(ux),len(ux))
		xt = np.reshape(xt,(len(xt),1))
		k = GPflow.kernels.Matern52(1, lengthscales=0.6)
		Modelux.append(GPflow.gpr.GPR(xt, ux, kern=k))
		Modelux[m].likelihood.variance = 0.05

		Modeluy.append(GPflow.gpr.GPR(xt, uy, kern=k))
		Modeluy[m].likelihood.variance = 0.05

		Modeluth.append(GPflow.gpr.GPR(xt, uth, kern=k))
		Modeluth[m].likelihood.variance = 0.05



def LearnStates(Frodo):
	global Modelx
	global Modely
	global Modelth
	global X_in
	#Wrap models here!!!
	Modelx = []
	Modely = []
	Modelth = []
	for m in range(0,len(Frodo)):
		states = GetData2(Frodo[m])
		
		xx = np.zeros((len(states),1)) # X
		yy = np.zeros((len(states),1)) # Y
		th = np.zeros((len(states),1)) # Yaw
		for i in range(0,len(states)):
			WrapOrient = (states[i].orientation.x,states[i].orientation.y,states[i].orientation.z,states[i].orientation.w)
			#WrapOrient.orientation = states[i].orientation
			euler = tf.transformations.euler_from_quaternion(WrapOrient)
			xx[i,0]=(states[i].position.x)
			yy[i,0]=(states[i].position.y)
			th[i,0]=(euler[2])
		xt = np.linspace(1,len(xx),len(xx))
		#xt = 0.3*(np.cos(xt))
		xt = np.reshape(xt,(len(xx),1))
		k = GPflow.kernels.Matern52(1, lengthscales=0.3)
		Modelx.append(GPflow.gpr.GPR(xt, xx, kern=k))
		Modelx[m].likelihood.variance = 0.05

		Modely.append(GPflow.gpr.GPR(xt, yy, kern=k))
		Modely[m].likelihood.variance = 0.05

		Modelth.append(GPflow.gpr.GPR(xt, th, kern=k))
		Modelth[m].likelihood.variance = 0.05

def getAvgX(M):
	l = []
	mu_l = []
	for bb in range(0,len(M)):
		l.append(np.size(M[bb].X))
	mx = min(l)
	mxx = max(l)
	max_in = l.index(max(l))
	m_vec = np.zeros((mx,1))
	for m in range(0,len(M)):
		tx = np.linspace(1,mx,mx)[:,None]
		mu, var = M[m].predict_f(tx)
		mu_l.append(mu)
	avl = float(1)/len(M)
	print(avl)

	for j in mu_l:
		for i in range(0,mx):
			m_vec[i,0] =j[i,0]*avl + m_vec[i,0]
	wrap_vcc,var = M[max_in].predict_f(np.linspace(mx, mxx)[:,None])
	

	return m_vec

def getAvgU(Mx,Mu):
	l = []
	mu_u = []
	for bb in range(0,len(Mx)):
		l.append(np.size(Mx[bb].X))
	mx = min(l)
	u_vec = np.zeros((mx,1))
	for m in range(0,len(Mu)):
		tx = np.linspace(1,mx,mx)[:,None]
		mu, var = Mu[m].predict_f(tx)
		mu_u.append(mu)
	avl = float(1)/len(Mu)
	print("avg const")
	print(avl)
	for j in mu_u:
		for i in range(0,mx):
			u_vec[i,0] =j[i,0]*avl + u_vec[i,0]
	#wrap_vcc,var = M[max_in].predict_f(np.linspace(mx, mxx)[:,None])
	print(u_vec)
	return u_vec


def getRealBag(RealBag):
		XSt = GetData2(RealBag)
		x = []
		y = []
		tht = []
		for i in range(0,len(XSt)):
			WrapOrient = (XSt[i].orientation.x,XSt[i].orientation.y,XSt[i].orientation.z,XSt[i].orientation.w)
			euler = tf.transformations.euler_from_quaternion(WrapOrient)
			x.append(XSt[i].position.x)
			y.append(XSt[i].position.y)
			tht.append(euler[2])
		#plt.plot(x,y,'bx', lw=2)
		XY = np.zeros((len(XSt),3))
		XY[:,0] = x
		XY[:,1] = y
		XY[:,2] = tht
		return XY
def PlotComparison(A,B,title):
	plt.figure(num=None, figsize=(12, 12))
	xCom = np.linspace(1,len(A),len(A))
	plt.plot(xCom,A,'-bx', lw = 2)
	plt.plot(xCom,B,'-gx', lw = 2)
	plt.legend(['Actual','GP filter Estimation'])
	plt.title(title)

def PlotTheta(th,mu_th): # Finish function here
		thwrap = []
		mu_thwrap = []
		for i in range(int(0.2*len(th)),len(th)):
			thwrap.append(th[i])
		for i in range(int(0.2*len(mu_th)),len(mu_th)):
			mu_thwrap.append(mu_th[i])
		plt.figure(num=None, figsize=(12, 12))
		xCom = np.linspace(1,len(mu_thwrap),len(thwrap))
		plt.plot(xCom,thwrap,'-bx',lw = 2)
		xCom = np.linspace(1,len(mu_thwrap),len(mu_thwrap))
		plt.plot(xCom,mu_thwrap,'-gx',lw = 2)
def getAvgError(ac,gp):
	EA = []
	for i in range(0,len(ac)):
		n1 = LA.norm((ac[i,0],ac[i,1]))
		n2 = LA.norm((gp[i,0],gp[i,1]))
		error = (100)*float(abs(n1 - n2))/n1
		EA.append(error)
	return np.mean(EA)

def getStd(ac,gp):
	EA = []
	for i in range(0,len(ac)):
		n1 = LA.norm((ac[i,0],ac[i,1]))
		n2 = LA.norm((gp[i,0],gp[i,1]))
		error = (100)*float(abs(n1 - n2))/n1
		EA.append(error)
	return np.std(EA)


def getPos(Pos):
	global x_actual
	global y_actual
	x_actual=Pos.pose.pose.position.x
	y_actual=Pos.pose.pose.position.y

def getDelay():
	rospy.wait_for_service('Delaylog')
	try:
		g_Del = rospy.ServiceProxy('Delaylog',SendDelayLogic)
		resp1 = g_Del(True)
		print("Got Delay")
		return resp1.senddb
	except rospy.ServiceException, e:
		pass

def GetDelLog(a):
	global gdl
	gdl = a.data

def Pippin():
	global Gp_it
	global TrainReady
	global x_actual
	global y_actual
	global gdl
	rospy.init_node('TrainBag', anonymous=True)
	AskE = rospy.Service('EstGen',Estimate,SendEstimate)
	AskT = rospy.Service('TrainingReady',TrReady,SendTrain)
	rospy.Subscriber("/Parrot_umar/odom", Odometry, getPos) # Change this too
	rospy.Subscriber("BoolLog", Bool, GetDelLog)
	Merry = BilboBaggins()
	LearnStates(Merry)
	LearnInputs(Merry)
	xtp = np.linspace(1, 182, 182)[:,None]
	#l = []
	for n in range(0,len(Merry)):
		#plt.figure(num=None, figsize=(12, 12))
		_ = Modelx[n].optimize(maxiter=300)
		_ = Modely[n].optimize(maxiter=300)
		_ = Modelth[n].optimize(maxiter=300)
		#_ = Modelux[n].optimize(maxiter=200)
		#_ = Modeluy[n].optimize(maxiter=200)
		#_ = Modeluth[n].optimize(maxiter=200)
		#l.append(Modelx[n].X)
		#print(np.size(l[n]))
		
		#mu1, var = (Modelx[n].predict_f(xtp))
		#mu2, var = (Modely[n].predict_f(xtp))
		#plt.plot(mu1, mu2,'go', lw=2)
	#plt.figure(num=None, figsize=(12, 12))
	mu1 = getAvgX(Modelx)
	mu2 = getAvgX(Modely)
	mu3 = getAvgX(Modelth)
	mu1L = []
	mu2L = []
	mu3L = []
	TrainReady = True
	print("Learning")
	#plt.plot(mu1, mu2,'go', lw=2)
	xyp = getRealBag(bag_read)
	#plt.plot(xyp[:,0],xyp[:,1], 'bx',lw=2)
	xypp = np.zeros((len(xyp),2))
	xypp[:,0] = xyp[:,0]
	xypp[:,1]  = xyp[:,1]
	xxyy = np.zeros((len(mu1),2))
	for z in range(0,len(mu1)):
		xxyy[z,0] = mu1[z]
	 	xxyy[z,1] = mu2[z]
	Cxy = xypp[np.argmin(cdist(xxyy,xypp),1)]
	#PlotComparison(Cxy[:,0],mu1,'X-Coordinate vs TimeSteps')
	#PlotComparison(Cxy[:,1],mu2,'Y-Coordinate vs TimeSteps')
	#PlotTheta(xyp[:,2],mu3)
	GP_out = np.zeros((len(mu1),2))
	for z in range(0,len(mu1)):
		GP_out[z,0] = mu1[z]
		GP_out[z,1] = mu2[z]
		mu1L.append(mu1[z])
		mu2L.append(mu2[z])

	rate = rospy.Rate(50)
	Gp_it = 0
	startTime = rospy.get_rostime()
	startTime = startTime.nsecs
	startP = False
	mu_in = 0
	go = False
	while not rospy.is_shutdown():
		if(gdl):
		#	print("In Delay")
			#if(Gp_it == 0):
			mexy = np.zeros((1,2))
			mexy[0,0] = x_actual
			mexy[0,1] = y_actual
			Mxy = xxyy[np.argmin(cdist(mexy,xxyy),1)]
		
			EstVec.x = Mxy[0,0]
			EstVec.y = Mxy[0,1]
		#	print("Est X")
		#	print(EstVec.x)
		#	print("Est Y")
		#	print(EstVec.y)

			
	#	EstVec.x = mu1[Gp_it]
	#	EstVec.y = mu2[Gp_it]
	#	EstVec.z = mu3[Gp_it]

	rate.sleep()


if __name__ == '__main__':
	try:
		Pippin()
	# 	rospy.init_node('TrainBag', anonymous=True)
	# 	Merry = BilboBaggins()
	# 	LearnStates(Merry)
	# 	LearnInputs(Merry)
	# 	xtp = np.linspace(1, 182, 182)[:,None]
	# 	#l = []
	# 	for n in range(0,len(Merry)):
	# 		#plt.figure(num=None, figsize=(12, 12))
	# 		_ = Modelx[n].optimize(maxiter=300)
	# 		_ = Modely[n].optimize(maxiter=300)
	# 		_ = Modelth[n].optimize(maxiter=300)
	# 		#_ = Modelux[n].optimize(maxiter=200)
	# 		#_ = Modeluy[n].optimize(maxiter=200)
	# 		#_ = Modeluth[n].optimize(maxiter=200)
	# 		#l.append(Modelx[n].X)
	# 		#print(np.size(l[n]))
			
	# 		#mu1, var = (Modelx[n].predict_f(xtp))
	# 		#mu2, var = (Modely[n].predict_f(xtp))
	# 		#plt.plot(mu1, mu2,'go', lw=2)
	# 	#plt.figure(num=None, figsize=(12, 12))
	# 	mu1 = getAvgX(Modelx)
	# 	mu2 = getAvgX(Modely)
	# 	mu3 = getAvgX(Modelth)
	# 	TrainReady = True
	# 	#plt.plot(mu1, mu2,'go', lw=2)
	# 	xyp = getRealBag(bag_read)
	# 	#plt.plot(xyp[:,0],xyp[:,1], 'bx',lw=2)
	# 	xypp = np.zeros((len(xyp),2))
	# 	xypp[:,0] = xyp[:,0]
	# 	xypp[:,1]  = xyp[:,1]
	# 	xxyy = np.zeros((len(mu1),2))
	# 	for z in range(0,len(mu1)):
	# 		xxyy[z,0] = mu1[z]
	# 	 	xxyy[z,1] = mu2[z]
	# 	Cxy = xypp[np.argmin(cdist(xxyy,xypp),1)]
	# 	#PlotComparison(Cxy[:,0],mu1,'X-Coordinate vs TimeSteps')
	# 	#PlotComparison(Cxy[:,1],mu2,'Y-Coordinate vs TimeSteps')
	# 	#PlotTheta(xyp[:,2],mu3)
	# 	GP_out = np.zeros((len(mu1),2))
	# 	for z in range(0,len(mu1)):
	# 		GP_out[z,0] = mu1[z]
	# 		GP_out[z,1] = mu2[z]

	# 	rate = rospy.Rate(50)
	# 	Gp_it = 0
	# 	startTime = rospy.get_rostime()
	# 	startTime = startTime.nsecs
	# while not rospy.is_shutdown():
		
	# 	currTime = rospy.get_rostime()
	# 	currTime = currTime.nsecs
	# 	if(abs(currTime - startTime) >= (DataStep)):
	# 		startTime = currTime
	# 		Gp_it = Gp_it + 1
	# 	if(Gp_it > len(mu1)):
	# 		Gp_it = 0
	# 	EstVec.x = mu1[GP_it]
	# 	EstVec.y = mu2[GP_it]

	# rate.sleep()

		#muux = getAvgU(Modelx,Modelux)
		#muuy = getAvgU(Modely,Modeluy)
		#mu1 = mu1 + muux
		#mu2 = mu2 + muuy
		#plt.figure(num=None, figsize=(12, 12))
		#plt.plot(mu1, mu2,'-go', lw=2)
		#plt.plot(Cxy[:,0], Cxy[:,1],'-bx', lw=2)
		#plt.legend(['Actual','GP filter'])
		#plt.show()
	except rospy.ROSInterruptException:
		pass
	finally:
		bag_read.close()

# xtp = np.linspace(1, len(xx), len(xx))[:,None]


# plt.figure(num=None, figsize=(12, 12))
# mu1, var = (Modelx.predict_f(xtp))
# line, = plt.plot(xtp, xx, 'x', mew=2)
# plt.plot(xtp, mu1, color=line.get_color(), lw=2)
# plt.legend(['Actual','GP filter'])
# plt.title('X-Coordinate')

# plt.figure(num=None, figsize=(12, 12))
# mu2, var = (Modely.predict_f(xtp))
# line, = plt.plot(xtp, yy, 'x', mew=2)
# plt.plot(xtp, mu2, color=line.get_color(), lw=2)
# plt.legend(['Actual','GP filter'])
# plt.title('Y-Coordinate')

# plt.figure(num=None, figsize=(12, 12))
# mu3, var = (Modelth.predict_f(xtp))
# line, = plt.plot(xtp, th, 'x', mew=2)
# plt.plot(xtp, mu3, color=line.get_color(), lw=2)
# plt.legend(['Actual','GP-filter'])
# plt.title('Theta')

# plt.figure(num=None, figsize=(12, 12))
# #mu3, var = (Modelth.predict_f(xtp))
# #line, = plt.plot(xtp, th, 'x', mew=2)
# plt.plot(mu1, mu2,'go')
# #plt.legend(['Actual','GP-filter'])
# plt.title('Prediction')
# #plt.legend(['Actual'],['GP Prediction'])
# plt.show()
#finally:
#	bag.close()