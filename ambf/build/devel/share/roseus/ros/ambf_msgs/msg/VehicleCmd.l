;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::VehicleCmd)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'VehicleCmd (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::VEHICLECMD")
  (make-package "AMBF_MSGS::VEHICLECMD"))

(in-package "ROS")
;;//! \htmlinclude VehicleCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::VehicleCmd
  :super ros::object
  :slots (_header _chassis_wrench _wheel_steering _wheel_power _wheel_brake _brake ))

(defmethod ambf_msgs::VehicleCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chassis_wrench __chassis_wrench) (instance geometry_msgs::Wrench :init))
    ((:wheel_steering __wheel_steering) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_power __wheel_power) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_brake __wheel_brake) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:brake __brake) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _chassis_wrench __chassis_wrench)
   (setq _wheel_steering __wheel_steering)
   (setq _wheel_power __wheel_power)
   (setq _wheel_brake __wheel_brake)
   (setq _brake __brake)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:chassis_wrench
   (&rest __chassis_wrench)
   (if (keywordp (car __chassis_wrench))
       (send* _chassis_wrench __chassis_wrench)
     (progn
       (if __chassis_wrench (setq _chassis_wrench (car __chassis_wrench)))
       _chassis_wrench)))
  (:wheel_steering
   (&optional __wheel_steering)
   (if __wheel_steering (setq _wheel_steering __wheel_steering)) _wheel_steering)
  (:wheel_power
   (&optional __wheel_power)
   (if __wheel_power (setq _wheel_power __wheel_power)) _wheel_power)
  (:wheel_brake
   (&optional __wheel_brake)
   (if __wheel_brake (setq _wheel_brake __wheel_brake)) _wheel_brake)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Wrench _chassis_wrench
    (send _chassis_wrench :serialization-length)
    ;; float32[] _wheel_steering
    (* 4    (length _wheel_steering)) 4
    ;; float32[] _wheel_power
    (* 4    (length _wheel_power)) 4
    ;; float32[] _wheel_brake
    (* 4    (length _wheel_brake)) 4
    ;; bool _brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Wrench _chassis_wrench
       (send _chassis_wrench :serialize s)
     ;; float32[] _wheel_steering
     (write-long (length _wheel_steering) s)
     (dotimes (i (length _wheel_steering))
       (sys::poke (elt _wheel_steering i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheel_power
     (write-long (length _wheel_power) s)
     (dotimes (i (length _wheel_power))
       (sys::poke (elt _wheel_power i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _wheel_brake
     (write-long (length _wheel_brake) s)
     (dotimes (i (length _wheel_brake))
       (sys::poke (elt _wheel_brake i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _brake
       (if _brake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Wrench _chassis_wrench
     (send _chassis_wrench :deserialize buf ptr-) (incf ptr- (send _chassis_wrench :serialization-length))
   ;; float32[] _wheel_steering
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_steering (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_steering i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_power
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_power (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_power i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _wheel_brake
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_brake (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_brake i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _brake
     (setq _brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ambf_msgs::VehicleCmd :md5sum-) "20858f9fdd87217d00304616067bb7b4")
(setf (get ambf_msgs::VehicleCmd :datatype-) "ambf_msgs/VehicleCmd")
(setf (get ambf_msgs::VehicleCmd :definition-)
      "Header header
geometry_msgs/Wrench chassis_wrench
float32[] wheel_steering
float32[] wheel_power
float32[] wheel_brake
bool brake

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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :ambf_msgs/VehicleCmd "20858f9fdd87217d00304616067bb7b4")


