# Install script for directory: /home/luiz/ROSprojects/RosTests/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/luiz/ROSprojects/RosTests/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE PROGRAM FILES "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE PROGRAM FILES "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/setup.bash;/home/luiz/ROSprojects/RosTests/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE FILE FILES
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/setup.sh;/home/luiz/ROSprojects/RosTests/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE FILE FILES
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/setup.zsh;/home/luiz/ROSprojects/RosTests/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE FILE FILES
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/luiz/ROSprojects/RosTests/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/luiz/ROSprojects/RosTests/catkin_ws/install" TYPE FILE FILES "/home/luiz/ROSprojects/RosTests/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_dev/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros_pkgs/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/moveit_planners/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_plugins/moveit_plugins/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/moveit_resources/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/dual_panda_moveit_config/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/fanuc_description/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/fanuc_moveit_config/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/panda_moveit_config/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/pr2_description/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/prbt_moveit_config/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/prbt_pg70_support/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/prbt_support/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/moveit_ros/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_runtime/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/tangs5dof_moveit/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/geometric_shapes/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/arduino_control_tutorials/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/jkprobot/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/robogui/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/tangs/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_msgs/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_msgs/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_plugins/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/gazebo_ros_pkgs/gazebo_ros_control/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/rviz_visual_tools/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/srdfdom/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/tangs5dof/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/urdf_tutorial/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_commander/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/panda_description/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_core/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/chomp/chomp_motion_planner/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/chomp/chomp_optimizer_adapter/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_resources/prbt_ikfast_manipulator_plugin/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/occupancy_map_monitor/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/planning/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_plugins/moveit_fake_controller_manager/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_kinematics/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/ompl/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/move_group/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/manipulation/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/perception/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/robot_interaction/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/warehouse/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/benchmarks/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/planning_interface/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/chomp/chomp_interface/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/visualization/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_ros/moveit_servo/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_setup_assistant/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_plugins/moveit_simple_controller_manager/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_plugins/moveit_ros_control_interface/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_visual_tools/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit_tutorials/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/pilz_industrial_motion_planner_testutils/cmake_install.cmake")
  include("/home/luiz/ROSprojects/RosTests/catkin_ws/build/moveit/moveit_planners/pilz_industrial_motion_planner/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/luiz/ROSprojects/RosTests/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
