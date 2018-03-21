#!/usr/bin/env python
import rospy
import numpy as np
import math as mt
import tf
import threading as td
from math import *
from  beb.srv import*
from geometry_msgs.msg import*
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import PoseArray
from geometry_msgs.msg import Twist
from geometry_msgs.msg import TwistStamped
from nav_msgs.msg import Odometry
from std_msgs.msg import Float64
from std_msgs.msg import Int64
from std_msgs.msg import Bool
from rospy.numpy_msg import numpy_msg
#import matplotlib.pyplot as plt
from cvxpy import *
import datetime
import time
# Use PoseArray for trajectory generation!!!
# USe Jupyter to start a revised script for MPC!!!!
# Look at the codes on https://github.com/AtsushiSakai/PyAdvancedControl/blob/master/mpc_modeling/mpc_modeling.py


#WTF is going on here
### Update, use Numpy for the testarray, not a list!


lock = td.Lock()


global pt
global Points
global PrevPoints
quat_init = tf.transformations.quaternion_from_euler(0.0, 0.0, 0.0)
Points = PoseStamped()
Points.pose.orientation.x = quat_init[0]
Points.pose.orientation.y = quat_init[1]
Points.pose.orientation.z = quat_init[2]
Points.pose.orientation.w = quat_init[3]
Points.pose.position.z = 1.0
PrevPoints = PoseStamped()
PrevPoints.pose.orientation.x = quat_init[0]
PrevPoints.pose.orientation.y = quat_init[1]
PrevPoints.pose.orientation.z = quat_init[2]
PrevPoints.pose.orientation.w = quat_init[3]
PrevPoints.pose.position.z = 1.0
global NotOccupied
global Active
global testArray

####### New Additions
global FullTraj
FullTraj = PoseArray()
#######
global th
global GoalReached
global step
global X_tr
global Y_tr
global T
global plot_data
plot_data = Vector3()
global AskT
global steps
AskT = False

X_tr = 0
Y_tr = 0


GoalReached = False
th = 0.0
NotOccupied = False
Active = False


steps = 50
step = mt.pi/steps
pt = 0.0

dt = 0.2  # [s] discrete time
lr = 0.12  # [m]
T = 5  # number of horizon
target = [0.0, 0.0]  # [x,y]
max_speed = 1.0
min_speed = -1.0
    

def getPoints(req):
    global NotOccupied
    global AskT
    global steps
    global testArray
    #global plot_data
    #global plot_pub
    
    if(req.ask == True and NotOccupied):
     # NotOccupied = False
      AskT = req.ask
      print("Sending Trajectory")
      #plot_pub.publish(plot_data)
      testArray = np.reshape(testArray,2*(2*steps + 1))
      return Next_trajectoryResponse((testArray))

def Completion(chk):
	if(chk.check and NotOccupied):
		return CompleteResponse(True)
	else:
		return CompleteResponse(False)



def getVel(Vel):
    global Vx
    global Vy

    Vx = Vel.twist.twist.linear.x
    Vy = Vel.twist.twist.linear.y


def LinealizeCarModel(xb, u, dt, lr):
    u"""
    TODO conplete model
    """

    x = xb[0]
    y = xb[1]
    v = xb[2]
    theta = xb[3]

    a = u[0]
    beta = u[1]

    t1 = -dt * v * sin(theta + beta)
    t2 = dt * v * cos(theta + beta)

    A = np.eye(xb.shape[0])
    A[0, 2] = dt * cos(theta + beta)
    A[1, 2] = dt * sin(theta + beta)
    A[3, 2] = dt * sin(beta) / lr
    A[0, 3] = t1
    A[1, 3] = t2

    B = np.zeros((xb.shape[0], u.shape[0]))
    B[2, 0] = dt
    B[0, 1] = t1
    B[1, 1] = t2
    B[3, 1] = dt * v * cos(beta) / lr

    tm = np.zeros((4, 1))
    tm[0, 0] = v * cos(theta + beta) * dt
    tm[1, 0] = v * sin(theta + beta) * dt
    tm[2, 0] = a * dt
    tm[3, 0] = v / lr * sin(beta) * dt
    C = xb + tm
    C = C - A * xb - B * u

    return A, B, C

def NonlinearModel(x, u, dt, lr):
    print(x.value)
    x[0] = x[0] + x[2] * cos(x[3] + u[1]) * dt
    x[1] = x[1] + x[2] * sin(x[3] + u[1]) * dt
    x[2] = x[2] + u[0] * dt
    x[3] = x[3] + x[2] / lr * sin(u[1]) * dt

    return x

def CalcInput(A, B, C, x, u,tar):

    x_0 = x[:]
    x = Variable(x.shape[0], T + 1)
    u = Variable(u.shape[0], T)

    # MPC controller
    states = []
    for t in range(T):
        #  constr = [x[:,t+1] == A*x[:,t] + B*u[:,t]+C, abs(u[:,t])<=0.5, x[2,t+1]<= max_speed, x[2,t+1] >= min_speed]
        constr = [x[:, t + 1] == A * x[:, t] + B * u[:, t] + C]
        #  constr = [x[:,t+1] == NonlinearModel(x[:,t],u,dt,lr)]
        constr += [abs(u[:, t]) <= 0.5]
        constr += [x[2, t + 1] <= max_speed]
        constr += [x[2, t + 1] >= min_speed]
        #  cost = sum_squares(u[:,t])
        cost = sum_squares(abs(x[0, t] - tar[0])) * 10.0 * t
        cost += sum_squares(abs(x[1, t] - tar[1])) * 10.0 * t
        if t == T - 1:
            cost += (x[0, t + 1] - tar[0]) ** 2 * 10000.0
            cost += (x[1, t + 1] - tar[1]) ** 2 * 10000.0

        states.append(Problem(Minimize(cost), constr))

    prob = sum(states)
    prob.constraints += [x[:, 0] == x_0, x[2,T] <= 0.2, x[2,T]>=-0.2]

    start = time.time()
    #  result=prob.solve(verbose=True)
    result = prob.solve(solver = ECOS_BB)
    elapsed_time = time.time() - start
    #print ("calc time:{0}".format(elapsed_time) + "[sec]")
    #print (prob.value)

    if prob.status != OPTIMAL:
        print("Cannot calc opt")

    #  print(prob.status)
    return u, x, prob.value

def GetListFromMatrix(x):
    return np.array(x).flatten().tolist()


def talker():
      global pt
      global listener
      global Points
      global PrevPoints
      global NotOccupied
      global Active
      global T
      global th
      global target
      global L_u
      global revolutions
      global plot_data
      global AskT
      global testArray
      global steps


      freq = 50.0
      roll = 0.0 
      pitch = 0.0 
      yaw = 0.0
      
      gx = 0.0
      gy = 0.0
      error = 0.0
      ang = 0.0
      tol = 0.08
      Ts = 1/freq
      width = 0.3 # m
      height = 0.3 # m for rectangular trajectory
      testArray = np.zeros((2*steps + 1,2),dtype = np.float64)

      Goals_new = PoseStamped()
      
      Nonetype = type(None)
      ch = Int64()
      
      rospy.init_node('Predict', anonymous=True)
      predict = rospy.Publisher('InputPast',TwistStamped,queue_size=1)
      plot_pub = rospy.Publisher('plotting_data',Vector3,queue_size=1)
      pub_th = rospy.Publisher('getTheta',Float64,queue_size=1)
      PushTraj = rospy.Publisher('getFullT',numpy_msg(Float64),queue_size=1)
      listener = tf.TransformListener()
      AskforNext = rospy.Service('trajectory',Next_trajectory,getPoints)
      ConfirmCompletion = rospy.Service('complete',Complete,Completion)
      Rotation_check = rospy.Publisher('Rot_Check',Int64,queue_size = 1)
      th0 = th
      rad = rospy.get_param('~radius')
      rad = float(rad)
      x0 = np.matrix([rad*np.cos(th0), rad*np.sin(th0), 0.05, th0]).T  # [x,y,v theta]
      #x0 = np.matrix([0, 0, 0.05, th0]).T
      x = x0
      u = np.matrix([0.0, 0.00]).T
      A, B, C = LinealizeCarModel(x, u, dt, lr)
      ustar, xstar, cost = CalcInput(A, B, C, x, u,target)
      Vf = GetListFromMatrix(xstar.value[2, T])         
      xstar1 = xstar
      rate = rospy.Rate(freq)
      while not rospy.is_shutdown():
        plot_pub.publish(plot_data)
        pub_th.publish(th)
        if not (NotOccupied):
          ch.data=0
          Rotation_check.publish(ch)
          #print("I am here")
          Active = True
          th0 = th
          if (th <= 2*mt.pi):   # Addition 08/12/2017
          	th = th + step
          #yaw = mt.pi/2 + th
          yaw = 0
          #yaw = mt.atan2(x[1,0],x[0,0]) # rect addition
          
          xstar1 = xstar
          
          
          target = [rad*np.cos(th), rad*np.sin(th)]
          Vf = GetListFromMatrix(xstar1.value[2, T])
          x0 = np.matrix([rad*np.cos(th0), rad*np.sin(th0), Vf[0], th0]).T  # [x,y,v theta]
          x = x0
          u = np.matrix([0.0, 0.00]).T  # [a,beta]
          #plt.figure(num=None, figsize=(12, 12))

          mincost = 100000

          for i in range(1000):
              A, B, C = LinealizeCarModel(x, u, dt, lr)
              ustar, xstar, cost = CalcInput(A, B, C, x, u,target)
              xstar1 = xstar
              u[0, 0] = GetListFromMatrix(ustar.value[0, :])[0]
              u[1, 0] = float(ustar[1, 0].value)

              x = A * x + B * u
              X_tr=xstar.value[0, T]
              Y_tr=xstar.value[1, T]
              Vf = GetListFromMatrix(xstar.value[2, T])
              dis = np.linalg.norm([x[0] - target[0], x[1] - target[1]])
              if (dis < 0.1):
                  #print("Goal")
                  #print(xstar.value)
                  break
          #plt.plot(X_tr, Y_tr, '-r')
          L_u = np.zeros((4,2))
          L_u = np.mat(A)*np.mat(B)
          L_ustar = np.zeros((2,T))
          L_ustar[0,:] = ustar.value[0,:]
          L_ustar[1,:] = ustar.value[1,:]

          L_u = np.mat(L_u)*np.mat(L_ustar)
          L_u_new = np.zeros((4,1))
          x_amazing = np.mat(A)*np.mat(x)
          L_u_new[0,0] = np.sum(L_u[0,:])
          L_u_new[1,0] = np.sum(L_u[1,:])
          L_u_new[2,0] = np.sum(L_u[2,:])
          L_u_new[3,0] = np.sum(L_u[3,:])
          #print(np.sum(L_u[0,0]))
          #print(np.sum(L_u[1,0]))
          xSend = x_amazing + L_u_new
          send_u = TwistStamped()
          send_u.twist.linear.x=(L_u_new[0,0]) #send x-coord
          send_u.twist.linear.y=(L_u_new[1,0]) #send y-coord
          send_u.twist.linear.z=(L_u_new[2,0]) #send V
          send_u.twist.angular.z=(L_u_new[3,0]) #send Theta
          Goals_new.pose.position.x = X_tr
          Goals_new.pose.position.y = Y_tr
          plot_data.x = X_tr
          plot_data.y = Y_tr
          plot_data.z = th
          Goals_new.pose.position.z = 1.0
          quat = tf.transformations.quaternion_from_euler(roll, pitch, yaw)
          Goals_new.pose.orientation.x = quat[0]
          Goals_new.pose.orientation.y = quat[1]
          Goals_new.pose.orientation.z = quat[2]
          Goals_new.pose.orientation.w = quat[3]
          predict.publish(send_u)
          #l_theta.publish(th)
          Points = Goals_new
          FullTraj.poses.append(Goals_new.pose)
        #  print("Goals x")
        #  print(Goals_new.pose.position.x)
        #  print("Goals y")
        #  print(Goals_new.pose.position.y)
          tt = np.array([Goals_new.pose.position.x,Goals_new.pose.position.y],dtype=np.float64)
          testArray[len(FullTraj.poses)-1,:] = tt
        #  FullTraj.poses.append(Goals_new.pose)
        #  print("Size & Content of trajectory:")
        #  print(len(testArray))
        #  print(testArray)
          if(th>2*mt.pi):
            NotOccupied = True
            ch.data = 1
            Rotation_check.publish(ch)
 
      

        rate.sleep()
   
if __name__ == '__main__':
   try:
       talker()
   except rospy.ROSInterruptException:
		pass