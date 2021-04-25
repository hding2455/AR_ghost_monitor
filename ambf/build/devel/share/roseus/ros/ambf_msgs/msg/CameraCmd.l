;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::CameraCmd)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'CameraCmd (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::CAMERACMD")
  (make-package "AMBF_MSGS::CAMERACMD"))

(in-package "ROS")
;;//! \htmlinclude CameraCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::CameraCmd
  :super ros::object
  :slots (_header _enable_position_controller _pose ))

(defmethod ambf_msgs::CameraCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enable_position_controller __enable_position_controller) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _enable_position_controller __enable_position_controller)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enable_position_controller
   (&optional __enable_position_controller)
   (if __enable_position_controller (setq _enable_position_controller __enable_position_controller)) _enable_position_controller)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _enable_position_controller
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _enable_position_controller
       (if _enable_position_controller (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _enable_position_controller
     (setq _enable_position_controller (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get ambf_msgs::CameraCmd :md5sum-) "4c77af9a51e6b28efe30862e7d6b0479")
(setf (get ambf_msgs::CameraCmd :datatype-) "ambf_msgs/CameraCmd")
(setf (get ambf_msgs::CameraCmd :definition-)
      "Header header
bool enable_position_controller
geometry_msgs/Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ambf_msgs/CameraCmd "4c77af9a51e6b28efe30862e7d6b0479")


