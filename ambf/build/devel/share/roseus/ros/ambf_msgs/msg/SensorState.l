;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::SensorState)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'SensorState (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::SENSORSTATE")
  (make-package "AMBF_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::SensorState
  :super ros::object
  :slots (_header _sim_step _type _parent_name _name _wall_time _sim_time _pose _count _triggered _range _measurement _sensed_objects _sensed_objects_map ))

(defmethod ambf_msgs::SensorState
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
    ((:count __count) 0)
    ((:triggered __triggered) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:measurement __measurement) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sensed_objects __sensed_objects) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:sensed_objects_map __sensed_objects_map) (make-array 0 :initial-element 0 :element-type :char))
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
   (setq _count (round __count))
   (setq _triggered __triggered)
   (setq _range __range)
   (setq _measurement __measurement)
   (setq _sensed_objects __sensed_objects)
   (setq _sensed_objects_map __sensed_objects_map)
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
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:triggered
   (&optional __triggered)
   (if __triggered (setq _triggered __triggered)) _triggered)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:measurement
   (&optional __measurement)
   (if __measurement (setq _measurement __measurement)) _measurement)
  (:sensed_objects
   (&rest __sensed_objects)
   (if (keywordp (car __sensed_objects))
       (send* _sensed_objects __sensed_objects)
     (progn
       (if __sensed_objects (setq _sensed_objects (car __sensed_objects)))
       _sensed_objects)))
  (:sensed_objects_map
   (&optional __sensed_objects_map)
   (if __sensed_objects_map (setq _sensed_objects_map __sensed_objects_map)) _sensed_objects_map)
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
    ;; uint32 _count
    4
    ;; bool[] _triggered
    (* 1    (length _triggered)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ;; float32[] _measurement
    (* 4    (length _measurement)) 4
    ;; std_msgs/String[] _sensed_objects
    (apply #'+ (send-all _sensed_objects :serialization-length)) 4
    ;; uint8[] _sensed_objects_map
    (* 1    (length _sensed_objects_map)) 4
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
     ;; uint32 _count
       (write-long _count s)
     ;; bool[] _triggered
     (write-long (length _triggered) s)
     (dotimes (i (length _triggered))
       (if (elt _triggered i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[] _range
     (write-long (length _range) s)
     (dotimes (i (length _range))
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _measurement
     (write-long (length _measurement) s)
     (dotimes (i (length _measurement))
       (sys::poke (elt _measurement i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; std_msgs/String[] _sensed_objects
     (write-long (length _sensed_objects) s)
     (dolist (elem _sensed_objects)
       (send elem :serialize s)
       )
     ;; uint8[] _sensed_objects_map
     (write-long (length _sensed_objects_map) s)
     (princ _sensed_objects_map s)
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
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool[] _triggered
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _triggered (make-list n))
     (dotimes (i n)
     (setf (elt _triggered i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32[] _range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _measurement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _measurement (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _measurement i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; std_msgs/String[] _sensed_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensed_objects (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _sensed_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _sensed_objects_map
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _sensed_objects_map (make-array n :element-type :char))
     (replace _sensed_objects_map buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ambf_msgs::SensorState :md5sum-) "82fb33535a7311b9256cac9ac5115e67")
(setf (get ambf_msgs::SensorState :datatype-) "ambf_msgs/SensorState")
(setf (get ambf_msgs::SensorState :definition-)
      "Header header
uint32 sim_step
std_msgs/String type
std_msgs/String parent_name
std_msgs/String name
float32 wall_time
float32 sim_time
geometry_msgs/Pose pose
uint32 count
bool[] triggered
float32[] range
float32[] measurement
std_msgs/String[] sensed_objects
uint8[] sensed_objects_map

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



(provide :ambf_msgs/SensorState "82fb33535a7311b9256cac9ac5115e67")


