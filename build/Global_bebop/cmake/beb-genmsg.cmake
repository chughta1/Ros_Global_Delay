# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beb: 0 messages, 11 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg;-Ibebop_msgs:/home/chuggi/catkin_ws/src/bebop_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beb_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" NAME_WE)
add_custom_target(_beb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beb" "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)
_generate_srv_cpp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
)

### Generating Module File
_generate_module_cpp(beb
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beb_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beb_generate_messages beb_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" NAME_WE)
add_dependencies(beb_generate_messages_cpp _beb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beb_gencpp)
add_dependencies(beb_gencpp beb_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beb_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)
_generate_srv_eus(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
)

### Generating Module File
_generate_module_eus(beb
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(beb_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(beb_generate_messages beb_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" NAME_WE)
add_dependencies(beb_generate_messages_eus _beb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beb_geneus)
add_dependencies(beb_geneus beb_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beb_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)
_generate_srv_lisp(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
)

### Generating Module File
_generate_module_lisp(beb
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beb_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beb_generate_messages beb_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" NAME_WE)
add_dependencies(beb_generate_messages_lisp _beb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beb_genlisp)
add_dependencies(beb_genlisp beb_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beb_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)
_generate_srv_py(beb
  "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
)

### Generating Module File
_generate_module_py(beb
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beb_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beb_generate_messages beb_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/TrReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/land.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/CheckLearn.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Estimate.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Next_trajectory.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/path.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/randomDelay.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/broadReady.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Complete.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/Optimized.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/Global_bebop/srv/SendDelayLogic.srv" NAME_WE)
add_dependencies(beb_generate_messages_py _beb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beb_genpy)
add_dependencies(beb_genpy beb_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beb_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beb
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(beb_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(beb_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET bebop_msgs_generate_messages_cpp)
  add_dependencies(beb_generate_messages_cpp bebop_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beb
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(beb_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(beb_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET bebop_msgs_generate_messages_eus)
  add_dependencies(beb_generate_messages_eus bebop_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beb
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(beb_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(beb_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET bebop_msgs_generate_messages_lisp)
  add_dependencies(beb_generate_messages_lisp bebop_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beb
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(beb_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(beb_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET bebop_msgs_generate_messages_py)
  add_dependencies(beb_generate_messages_py bebop_msgs_generate_messages_py)
endif()
