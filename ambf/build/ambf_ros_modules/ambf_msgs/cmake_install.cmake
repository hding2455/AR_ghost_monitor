# Install script for directory: /home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ambf_msgs/msg" TYPE FILE FILES
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/ObjectState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/ObjectCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/ActuatorState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/ActuatorCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/SensorState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/SensorCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/CameraState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/CameraCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/LightState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/LightCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/RigidBodyState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/RigidBodyCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/VehicleState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/VehicleCmd.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/WorldState.msg"
    "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/msg/WorldCmd.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ambf_msgs/cmake" TYPE FILE FILES "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_msgs/catkin_generated/installspace/ambf_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hding15/Desktop/ambf/build/devel/include/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hding15/Desktop/ambf/build/devel/share/roseus/ros/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hding15/Desktop/ambf/build/devel/share/common-lisp/ros/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hding15/Desktop/ambf/build/devel/share/gennodejs/ros/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/hding15/Desktop/ambf/build/devel/lib/python2.7/dist-packages/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hding15/Desktop/ambf/build/devel/lib/python2.7/dist-packages/ambf_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_msgs/catkin_generated/installspace/ambf_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ambf_msgs/cmake" TYPE FILE FILES "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_msgs/catkin_generated/installspace/ambf_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ambf_msgs/cmake" TYPE FILE FILES
    "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_msgs/catkin_generated/installspace/ambf_msgsConfig.cmake"
    "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_msgs/catkin_generated/installspace/ambf_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ambf_msgs" TYPE FILE FILES "/home/hding15/Desktop/ambf/ambf_ros_modules/ambf_msgs/package.xml")
endif()

