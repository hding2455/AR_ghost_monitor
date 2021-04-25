; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude SensorCmd.msg.html

(cl:defclass <SensorCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (actuate
    :reader actuate
    :initarg :actuate
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass SensorCmd (<SensorCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<SensorCmd> is deprecated: use ambf_msgs-msg:SensorCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'actuate-val :lambda-list '(m))
(cl:defmethod actuate-val ((m <SensorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:actuate-val is deprecated.  Use ambf_msgs-msg:actuate instead.")
  (actuate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorCmd>) ostream)
  "Serializes a message object of type '<SensorCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'actuate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorCmd>) istream)
  "Deserializes a message object of type '<SensorCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuate) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuate)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorCmd>)))
  "Returns string type for a message object of type '<SensorCmd>"
  "ambf_msgs/SensorCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorCmd)))
  "Returns string type for a message object of type 'SensorCmd"
  "ambf_msgs/SensorCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorCmd>)))
  "Returns md5sum for a message object of type '<SensorCmd>"
  "8f1886769be440a6a76a9e6c56ba2056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorCmd)))
  "Returns md5sum for a message object of type 'SensorCmd"
  "8f1886769be440a6a76a9e6c56ba2056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorCmd>)))
  "Returns full string definition for message of type '<SensorCmd>"
  (cl:format cl:nil "Header header~%bool[] actuate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorCmd)))
  "Returns full string definition for message of type 'SensorCmd"
  (cl:format cl:nil "Header header~%bool[] actuate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorCmd
    (cl:cons ':header (header msg))
    (cl:cons ':actuate (actuate msg))
))
