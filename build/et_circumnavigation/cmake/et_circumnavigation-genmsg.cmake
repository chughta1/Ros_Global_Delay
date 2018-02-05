# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "et_circumnavigation: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(et_circumnavigation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" NAME_WE)
add_custom_target(_et_circumnavigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "et_circumnavigation" "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" NAME_WE)
add_custom_target(_et_circumnavigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "et_circumnavigation" "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" NAME_WE)
add_custom_target(_et_circumnavigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "et_circumnavigation" "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" NAME_WE)
add_custom_target(_et_circumnavigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "et_circumnavigation" "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_cpp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_cpp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_cpp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
)

### Generating Module File
_generate_module_cpp(et_circumnavigation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(et_circumnavigation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(et_circumnavigation_generate_messages et_circumnavigation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_cpp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_cpp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_cpp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_cpp _et_circumnavigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(et_circumnavigation_gencpp)
add_dependencies(et_circumnavigation_gencpp et_circumnavigation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS et_circumnavigation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_eus(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_eus(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_eus(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
)

### Generating Module File
_generate_module_eus(et_circumnavigation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(et_circumnavigation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(et_circumnavigation_generate_messages et_circumnavigation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_eus _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_eus _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_eus _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_eus _et_circumnavigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(et_circumnavigation_geneus)
add_dependencies(et_circumnavigation_geneus et_circumnavigation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS et_circumnavigation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_lisp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_lisp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_lisp(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
)

### Generating Module File
_generate_module_lisp(et_circumnavigation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(et_circumnavigation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(et_circumnavigation_generate_messages et_circumnavigation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_lisp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_lisp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_lisp _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_lisp _et_circumnavigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(et_circumnavigation_genlisp)
add_dependencies(et_circumnavigation_genlisp et_circumnavigation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS et_circumnavigation_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_py(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_py(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
)
_generate_srv_py(et_circumnavigation
  "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
)

### Generating Module File
_generate_module_py(et_circumnavigation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(et_circumnavigation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(et_circumnavigation_generate_messages et_circumnavigation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/RemoveAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_py _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Topology.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_py _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/AddAgent.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_py _et_circumnavigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/et_circumnavigation/srv/Circum.srv" NAME_WE)
add_dependencies(et_circumnavigation_generate_messages_py _et_circumnavigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(et_circumnavigation_genpy)
add_dependencies(et_circumnavigation_genpy et_circumnavigation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS et_circumnavigation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/et_circumnavigation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(et_circumnavigation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/et_circumnavigation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(et_circumnavigation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/et_circumnavigation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(et_circumnavigation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/et_circumnavigation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(et_circumnavigation_generate_messages_py std_msgs_generate_messages_py)
endif()
