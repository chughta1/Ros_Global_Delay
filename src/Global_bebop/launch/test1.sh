#!/bin/bash

arrowup='8'
arrowdown='\[B'
arrowrt='\[C'
arrowleft='\[D'
while true
do
	read -t 1 -n 1 key
	if [[ $key = t ]]
    	then
    	echo " ........ "
    	echo "Taking off"
		rostopic pub --once bebop/takeoff std_msgs/Empty
		


	
	fi	
	if [[ $key = a ]]
    	then

    	echo " ........ "
		echo "Switching to autopilot"
		roslaunch beb bebop.launch
 

	
	fi	

	# if [[ $key = q ]]
 #    	then
 #    	echo " ........ "
 #    	echo "Landing"
	# 	rostopic pub --once bebop/land std_msgs/Empty
	# fi

	if [[ $key = e ]]
    	then
    	echo " ........ "
		echo "Terminating program"
		break
	fi
done
