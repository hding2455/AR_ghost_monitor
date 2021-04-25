;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::SensorCmd)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'SensorCmd (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::SENSORCMD")
  (make-package "AMBF_MSGS::SENSORCMD"))

(in-package "ROS")
;;//! \htmlinclude SensorCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ambf_msgs::SensorCmd
  :super ros::object
  :slots (_header _actuate ))

(defmethod ambf_msgs::SensorCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:actuate __actuate) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _actuate __actuate)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _actuate
    (* 1    (length _actuate)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _actuate
     (write-long (length _actuate) s)
     (dotimes (i (length _actuate))
       (if (elt _actuate i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _actuate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuate (make-list n))
     (dotimes (i n)
     (setf (elt _actuate i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get ambf_msgs::SensorCmd :md5sum-) "8f1886769be440a6a76a9e6c56ba2056")
(setf (get ambf_msgs::SensorCmd :datatype-) "ambf_msgs/SensorCmd")
(setf (get ambf_msgs::SensorCmd :definition-)
      "Header header
bool[] actuate

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

")



(provide :ambf_msgs/SensorCmd "8f1886769be440a6a76a9e6c56ba2056")


