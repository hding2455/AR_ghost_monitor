;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::VehicleState)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'VehicleState (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::VEHICLESTATE")
  (make-package "AMBF_MSGS::VEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::VehicleState
  :super ros::object
  :slots (_header _sim_step _name _wall_time _sim_time _mass _pInertia _pose _wheel_count _wheel_offsets ))

(defmethod ambf_msgs::VehicleState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sim_step __sim_step) 0)
    ((:name __name) (instance std_msgs::String :init))
    ((:wall_time __wall_time) 0.0)
    ((:sim_time __sim_time) 0.0)
    ((:mass __mass) 0.0)
    ((:pInertia __pInertia) (instance geometry_msgs::Point :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:wheel_count __wheel_count) 0)
    ((:wheel_offsets __wheel_offsets) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sim_step (round __sim_step))
   (setq _name __name)
   (setq _wall_time (float __wall_time))
   (setq _sim_time (float __sim_time))
   (setq _mass (float __mass))
   (setq _pInertia __pInertia)
   (setq _pose __pose)
   (setq _wheel_count (round __wheel_count))
   (setq _wheel_offsets __wheel_offsets)
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
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:pInertia
   (&rest __pInertia)
   (if (keywordp (car __pInertia))
       (send* _pInertia __pInertia)
     (progn
       (if __pInertia (setq _pInertia (car __pInertia)))
       _pInertia)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:wheel_count
   (&optional __wheel_count)
   (if __wheel_count (setq _wheel_count __wheel_count)) _wheel_count)
  (:wheel_offsets
   (&rest __wheel_offsets)
   (if (keywordp (car __wheel_offsets))
       (send* _wheel_offsets __wheel_offsets)
     (progn
       (if __wheel_offsets (setq _wheel_offsets (car __wheel_offsets)))
       _wheel_offsets)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _sim_step
    4
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ;; float32 _wall_time
    4
    ;; float32 _sim_time
    4
    ;; float32 _mass
    4
    ;; geometry_msgs/Point _pInertia
    (send _pInertia :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int8 _wheel_count
    1
    ;; geometry_msgs/Pose[] _wheel_offsets
    (apply #'+ (send-all _wheel_offsets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _sim_step
       (write-long _sim_step s)
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;; float32 _wall_time
       (sys::poke _wall_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sim_time
       (sys::poke _sim_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _pInertia
       (send _pInertia :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int8 _wheel_count
       (write-byte _wheel_count s)
     ;; geometry_msgs/Pose[] _wheel_offsets
     (write-long (length _wheel_offsets) s)
     (dolist (elem _wheel_offsets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sim_step
     (setq _sim_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;; float32 _wall_time
     (setq _wall_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sim_time
     (setq _sim_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mass
     (setq _mass (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _pInertia
     (send _pInertia :deserialize buf ptr-) (incf ptr- (send _pInertia :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int8 _wheel_count
     (setq _wheel_count (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _wheel_count 127) (setq _wheel_count (- _wheel_count 256)))
   ;; geometry_msgs/Pose[] _wheel_offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_offsets (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _wheel_offsets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ambf_msgs::VehicleState :md5sum-) "6e44991cffd599ccc408523398b06f19")
(setf (get ambf_msgs::VehicleState :datatype-) "ambf_msgs/VehicleState")
(setf (get ambf_msgs::VehicleState :definition-)
      "Header header
uint32 sim_step
std_msgs/String name
float32 wall_time
float32 sim_time
float32 mass
geometry_msgs/Point pInertia
geometry_msgs/Pose pose
int8 wheel_count
geometry_msgs/Pose[] wheel_offsets

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ambf_msgs/VehicleState "6e44991cffd599ccc408523398b06f19")


