;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::ActuatorState)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'ActuatorState (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::ACTUATORSTATE")
  (make-package "AMBF_MSGS::ACTUATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ActuatorState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::ActuatorState
  :super ros::object
  :slots (_header _sim_step _type _parent_name _name _wall_time _sim_time _pose _actuated ))

(defmethod ambf_msgs::ActuatorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sim_step __sim_step) 0)
    ((:type __type) (instance std_msgs::String :init))
    ((:parent_name __parent_name) (instance std_msgs::String :init))
    ((:name __name) (instance std_msgs::String :init))
    ((:wall_time __wall_time) 0.0)
    ((:sim_time __sim_time) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:actuated __actuated) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sim_step (round __sim_step))
   (setq _type __type)
   (setq _parent_name __parent_name)
   (setq _name __name)
   (setq _wall_time (float __wall_time))
   (setq _sim_time (float __sim_time))
   (setq _pose __pose)
   (setq _actuated __actuated)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sim_step
   (&optional __sim_step)
   (if __sim_step (setq _sim_step __sim_step)) _sim_step)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:parent_name
   (&rest __parent_name)
   (if (keywordp (car __parent_name))
       (send* _parent_name __parent_name)
     (progn
       (if __parent_name (setq _parent_name (car __parent_name)))
       _parent_name)))
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:wall_time
   (&optional __wall_time)
   (if __wall_time (setq _wall_time __wall_time)) _wall_time)
  (:sim_time
   (&optional __sim_time)
   (if __sim_time (setq _sim_time __sim_time)) _sim_time)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:actuated
   (&optional __actuated)
   (if __actuated (setq _actuated __actuated)) _actuated)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _sim_step
    4
    ;; std_msgs/String _type
    (send _type :serialization-length)
    ;; std_msgs/String _parent_name
    (send _parent_name :serialization-length)
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ;; float32 _wall_time
    4
    ;; float32 _sim_time
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; bool _actuated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _sim_step
       (write-long _sim_step s)
     ;; std_msgs/String _type
       (send _type :serialize s)
     ;; std_msgs/String _parent_name
       (send _parent_name :serialize s)
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;; float32 _wall_time
       (sys::poke _wall_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sim_time
       (sys::poke _sim_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; bool _actuated
       (if _actuated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sim_step
     (setq _sim_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/String _parent_name
     (send _parent_name :deserialize buf ptr-) (incf ptr- (send _parent_name :serialization-length))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;; float32 _wall_time
     (setq _wall_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sim_time
     (setq _sim_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _actuated
     (setq _actuated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ambf_msgs::ActuatorState :md5sum-) "99b56804e89ef8d6b166b7861c291694")
(setf (get ambf_msgs::ActuatorState :datatype-) "ambf_msgs/ActuatorState")
(setf (get ambf_msgs::ActuatorState :definition-)
      "Header header
uint32 sim_step
std_msgs/String type
std_msgs/String parent_name
std_msgs/String name
float32 wall_time
float32 sim_time
geometry_msgs/Pose pose
bool actuated

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



(provide :ambf_msgs/ActuatorState "99b56804e89ef8d6b166b7861c291694")


