#!/usr/bin/env python
import rospy
import roslib
import tf
from std_msgs.msg import Bool
from geometry_msgs.msg import*
from geometry_msgs.msg import Vector3
from  beb.srv import*
global BroadcastingReady
global gdl
gdl = False
BroadcastingReady = False

def Client_Train():
	rospy.wait_for_service('TrainingReady')
	try:
		TReady = rospy.ServiceProxy('TrainingReady',TrReady)
		resp1 = TReady(True)
		return resp1.resTrain
	except rospy.ServiceException, e:
		pass

def Client_Learn():
	rospy.wait_for_service('LearnLogic')
	try:
		Cl_Learn = rospy.ServiceProxy('LearnLogic',CheckLearn)
		resp1 = Cl_Learn()
		return resp1.LearnConf
	except rospy.ServiceException, e:
		pass

def Client_Estimate():
	rospy.wait_for_service('EstGen')
	try:
		Cl_Est = rospy.ServiceProxy('EstGen',Estimate)
		resp1 = Cl_Est(True)
		return resp1.Est
	except rospy.ServiceException, e:
		pass

def getDelay():
	rospy.wait_for_service('Delaylog')
	try:
		g_Del = rospy.ServiceProxy('Delaylog',SendDelayLogic)
		resp1 = g_Del(True)
		return resp1.senddb
	except rospy.ServiceException, e:
		pass


def BroadCastReady(BCR):
	global BroadcastingReady
	if(BCR.breadyask):
		#print("BroadCast Logic")
		#print(BroadcastingReady)
		return broadReadyResponse(BroadcastingReady)

def GetDelLog(a):
	global gdl
	gdl = a.data
	

def FrameBroadcast():
	global gdl
	global BroadcastingReady
#gdl = False
	rospy.init_node('fixed_tf_broadcaster')
	BReady = rospy.Service('BroadReady',broadReady,BroadCastReady)
	pub_gdl = rospy.Publisher('DelLogic',Bool,queue_size=1)
	rospy.Subscriber("BoolLog", Bool, GetDelLog)
	
	rate = rospy.Rate(50.0)
	ch_Train = False
	ch_Learn = False
	now2 = 0
	while not rospy.is_shutdown():
		now1 = rospy.get_rostime()
		now1 = now1.nsecs
		diff = now1 - now2
	#	print("Time Diff")
	#	print(diff*10**-9)
		ch_Est = Vector3()
		if(not ch_Train or not ch_Learn):
			ch_Train = Client_Train()
			ch_Learn = Client_Learn()
		if(ch_Train and ch_Learn and gdl):
			br = tf.TransformBroadcaster()
			ch_Est = Client_Estimate()
			BroadcastingReady = True
			pub_gdl.publish(BroadcastingReady)
			#print("Estimate vector:")
			#print(ch_Est.x)
			#print(ch_Est.y)
			br.sendTransform((ch_Est.x,ch_Est.y, 1.0),(0.0, 0.0, 0.0, 1.0),rospy.Time.now(),"Predict","/world")
			now2 = rospy.get_rostime()
			now2 = now2.nsecs
			
			#gdl = False
	rate.sleep()

if __name__ == "__main__":
	FrameBroadcast()
