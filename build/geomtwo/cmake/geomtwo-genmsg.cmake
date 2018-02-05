# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "geomtwo: 6 messages, 0 services")

set(MSG_I_FLAGS "-Igeomtwo:/home/chuggi/catkin_ws/src/geomtwo/msg;-Igeomtwo:/home/chuggi/catkin_ws/src/geomtwo/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(geomtwo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" "geomtwo/Versor:geomtwo/Point"
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" "geomtwo/Versor:geomtwo/Vector"
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" "geomtwo/Vector"
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" ""
)

get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" NAME_WE)
add_custom_target(_geomtwo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "geomtwo" "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)
_generate_msg_cpp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
)

### Generating Services

### Generating Module File
_generate_module_cpp(geomtwo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(geomtwo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(geomtwo_generate_messages geomtwo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_cpp _geomtwo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geomtwo_gencpp)
add_dependencies(geomtwo_gencpp geomtwo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geomtwo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)
_generate_msg_eus(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
)

### Generating Services

### Generating Module File
_generate_module_eus(geomtwo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(geomtwo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(geomtwo_generate_messages geomtwo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_eus _geomtwo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geomtwo_geneus)
add_dependencies(geomtwo_geneus geomtwo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geomtwo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)
_generate_msg_lisp(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
)

### Generating Services

### Generating Module File
_generate_module_lisp(geomtwo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(geomtwo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(geomtwo_generate_messages geomtwo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_lisp _geomtwo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geomtwo_genlisp)
add_dependencies(geomtwo_genlisp geomtwo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geomtwo_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg;/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)
_generate_msg_py(geomtwo
  "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
)

### Generating Services

### Generating Module File
_generate_module_py(geomtwo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(geomtwo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(geomtwo_generate_messages geomtwo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Pose.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Transform.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Twist.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Versor.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Point.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chuggi/catkin_ws/src/geomtwo/msg/Vector.msg" NAME_WE)
add_dependencies(geomtwo_generate_messages_py _geomtwo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(geomtwo_genpy)
add_dependencies(geomtwo_genpy geomtwo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS geomtwo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/geomtwo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geomtwo_generate_messages_cpp)
  add_dependencies(geomtwo_generate_messages_cpp geomtwo_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/geomtwo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geomtwo_generate_messages_eus)
  add_dependencies(geomtwo_generate_messages_eus geomtwo_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/geomtwo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geomtwo_generate_messages_lisp)
  add_dependencies(geomtwo_generate_messages_lisp geomtwo_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/geomtwo/.+/__init__.pyc?$"
  )
endif()
if(TARGET geomtwo_generate_messages_py)
  add_dependencies(geomtwo_generate_messages_py geomtwo_generate_messages_py)
endif()
