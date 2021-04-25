;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::ActuatorCmd)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'ActuatorCmd (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::ACTUATORCMD")
  (make-package "AMBF_MSGS::ACTUATORCMD"))

(in-package "ROS")
;;//! \htmlinclude ActuatorCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::ActuatorCmd
  :super ros::object
  :slots (_header _actuate _body_name _use_offset _body_offset ))

(defmethod ambf_msgs::ActuatorCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:actuate __actuate) nil)
    ((:body_name __body_name) (instance std_msgs::String :init))
    ((:use_offset __use_offset) nil)
    ((:body_offset __body_offset) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _actuate __actuate)
   (setq _body_name __body_name)
   (setq _use_offset __use_offset)
   (setq _body_offset __body_offset)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:actuate
   (&optional __actuate)
   (if __actuate (setq _actuate __actuate)) _actuate)
  (:body_name
   (&rest __body_name)
   (if (keywordp (car __body_name))
       (send* _body_name __body_name)
     (progn
       (if __body_name (setq _body_name (car __body_name)))
       _body_name)))
  (:use_offset
   (&optional __use_offset)
   (if __use_offset (setq _use_offset __use_offset)) _use_offset)
  (:body_offset
   (&rest __body_offset)
   (if (keywordp (car __body_offset))
       (send* _body_offset __body_offset)
     (progn
       (if __body_offset (setq _body_offset (car __body_offset)))
       _body_offset)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _actuate
    1
    ;; std_msgs/String _body_name
    (send _body_name :serialization-length)
    ;; bool _use_offset
    1
    ;; geometry_msgs/Pose _body_offset
    (send _body_offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _actuate
       (if _actuate (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/String _body_name
       (send _body_name :serialize s)
     ;; bool _use_offset
       (if _use_offset (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _body_offset
       (send _body_offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _actuate
     (setq _actuate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/String _body_name
     (send _body_name :deserialize buf ptr-) (incf ptr- (send _body_name :serialization-length))
   ;; bool _use_offset
     (setq _use_offset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _body_offset
     (send _body_offset :deserialize buf ptr-) (incf ptr- (send _body_offset :serialization-length))
   ;;
   self)
  )

(setf (get ambf_msgs::ActuatorCmd :md5sum-) "2550283e9583221aecb97179737d09a8")
(setf (get ambf_msgs::ActuatorCmd :datatype-) "ambf_msgs/ActuatorCmd")
(setf (get ambf_msgs::ActuatorCmd :definition-)
      "Header header
bool actuate
std_msgs/String body_name
bool use_offset
geometry_msgs/Pose body_offset

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
MSG: std_msgs/String
string data

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



(provide :ambf_msgs/ActuatorCmd "2550283e9583221aecb97179737d09a8")


