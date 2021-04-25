execute_process(COMMAND "/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_comm/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hding15/Desktop/ambf/build/ambf_ros_modules/ambf_comm/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
