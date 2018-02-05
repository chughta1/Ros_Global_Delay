execute_process(COMMAND "/home/chuggi/catkin_ws/build/geomtwo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/chuggi/catkin_ws/build/geomtwo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
