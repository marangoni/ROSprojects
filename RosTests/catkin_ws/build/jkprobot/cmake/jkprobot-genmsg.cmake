# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jkprobot: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ijkprobot:/home/luiz/RosTests/catkin_ws/src/jkprobot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jkprobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_custom_target(_jkprobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jkprobot" "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jkprobot
  "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jkprobot
)

### Generating Services

### Generating Module File
_generate_module_cpp(jkprobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jkprobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jkprobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jkprobot_generate_messages jkprobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_dependencies(jkprobot_generate_messages_cpp _jkprobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jkprobot_gencpp)
add_dependencies(jkprobot_gencpp jkprobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jkprobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jkprobot
  "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jkprobot
)

### Generating Services

### Generating Module File
_generate_module_eus(jkprobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jkprobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jkprobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jkprobot_generate_messages jkprobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_dependencies(jkprobot_generate_messages_eus _jkprobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jkprobot_geneus)
add_dependencies(jkprobot_geneus jkprobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jkprobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jkprobot
  "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jkprobot
)

### Generating Services

### Generating Module File
_generate_module_lisp(jkprobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jkprobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jkprobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jkprobot_generate_messages jkprobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_dependencies(jkprobot_generate_messages_lisp _jkprobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jkprobot_genlisp)
add_dependencies(jkprobot_genlisp jkprobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jkprobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jkprobot
  "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jkprobot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(jkprobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jkprobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jkprobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jkprobot_generate_messages jkprobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_dependencies(jkprobot_generate_messages_nodejs _jkprobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jkprobot_gennodejs)
add_dependencies(jkprobot_gennodejs jkprobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jkprobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jkprobot
  "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jkprobot
)

### Generating Services

### Generating Module File
_generate_module_py(jkprobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jkprobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jkprobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jkprobot_generate_messages jkprobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luiz/RosTests/catkin_ws/src/jkprobot/msg/Ardubot.msg" NAME_WE)
add_dependencies(jkprobot_generate_messages_py _jkprobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jkprobot_genpy)
add_dependencies(jkprobot_genpy jkprobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jkprobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jkprobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jkprobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jkprobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jkprobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jkprobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jkprobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jkprobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jkprobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jkprobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jkprobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jkprobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jkprobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jkprobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jkprobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jkprobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jkprobot_generate_messages_py std_msgs_generate_messages_py)
endif()
