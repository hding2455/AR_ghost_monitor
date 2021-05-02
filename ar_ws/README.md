# Folder for the ROS work_space for monitor system

## Build this repo:
    catkin build

## Code Explanation
- src/real_camera: folder for the launch file of the image receiver of the real camera
  - src/real_camera/launch/elp.launch: the launch file that make a new node for subscribe to the usb camera and publish the image into roscore
- src/python_run_file: the python files for running the monitor
  - src/python_run_file/data/*: predefined command files for robot
  - src/python_run_file/video_videwer.py: nodes for showing the combined scene of the real and simulation environmnet
    - Define the Class of camera_handler to handle all camera info:
      - subscribe to /ambf/env/cameras/default_camera/ImageData/compressed to receive real image: once received stored as temporal image
      - real_camera_callback: the callback function of the above subscriber to do the receive and stroration.
      - subscribe to /image_raw/compressed to receive simulation image: once received, combined with stored temporal real image and show to the user. While showing video, it will listen to key 'c', once 'c' pressed, it will do the camera calibration.
      - simulate_camera_callback: the callback function of the above subscriber to do the combination, video videwing and key listening.
      - subscribe to ambf/env/cameras/default_camera/State to receive camera state: for debug output
      - show_camera_state: the callback function of the above subscriber to show the camera info
      - publish to ambf/env/cameras/default_camera/Command to adjust the camera state in the simulation env for camera calibration
      - camera_calibration: function to do the camera calibration
      - read_checkboard_config: read the predefined marker info for the camera calibration
  - src/python_run_file/monitor_command.py: nodes for publish command to simulator and real robot
    - Define the Controller class for a robot control which consists of following functions:
      - simulator_init: initialize the simulator control (usually for ambf is initilize the ambf_client)
      - real_robot_init: initialize the real robot control
      - read_control_file: define how to decode the predefined command file
      - run_simulator: run the command in the simulation env
      - back_init_state_simulator: if the command is discard return to the init state in simulation
      - update_init_state: if the command is accepted update the init state in simulation
      - run_real_robot: if the command is accepted, run the real robot with the command
      - run: listen to the command file input, show the simulation and ask for accept/discard from the user.
