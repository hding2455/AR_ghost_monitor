; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude ActuatorCmd.msg.html

(cl:defclass <ActuatorCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (actuate
    :reader actuate
    :initarg :actuate
    :type cl:boolean
    :initform cl:nil)
   (body_name
    :reader body_name
    :initarg :body_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (use_offset
    :reader use_offset
    :initarg :use_offset
    :type cl:boolean
    :initform cl:nil)
   (body_offset
    :reader body_offset
    :initarg :body_offset
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ActuatorCmd (<ActuatorCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<ActuatorCmd> is deprecated: use ambf_msgs-msg:ActuatorCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActuatorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'actuate-val :lambda-list '(m))
(cl:defmethod actuate-val ((m <ActuatorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:actuate-val is deprecated.  Use ambf_msgs-msg:actuate instead.")
  (actuate m))

(cl:ensure-generic-function 'body_name-val :lambda-list '(m))
(cl:defmethod body_name-val ((m <ActuatorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:body_name-val is deprecated.  Use ambf_msgs-msg:body_name instead.")
  (body_name m))

(cl:ensure-generic-function 'use_offset-val :lambda-list '(m))
(cl:defmethod use_offset-val ((m <ActuatorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:use_offset-val is deprecated.  Use ambf_msgs-msg:use_offset instead.")
  (use_offset m))

(cl:ensure-generic-function 'body_offset-val :lambda-list '(m))
(cl:defmethod body_offset-val ((m <ActuatorCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:body_offset-val is deprecated.  Use ambf_msgs-msg:body_offset instead.")
  (body_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorCmd>) ostream)
  "Serializes a message object of type '<ActuatorCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'actuate) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_name) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_offset) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorCmd>) istream)
  "Deserializes a message object of type '<ActuatorCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'actuate) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_name) istream)
    (cl:setf (cl:slot-value msg 'use_offset) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorCmd>)))
  "Returns string type for a message object of type '<ActuatorCmd>"
  "ambf_msgs/ActuatorCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorCmd)))
  "Returns string type for a message object of type 'ActuatorCmd"
  "ambf_msgs/ActuatorCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorCmd>)))
  "Returns md5sum for a message object of type '<ActuatorCmd>"
  "2550283e9583221aecb97179737d09a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorCmd)))
  "Returns md5sum for a message object of type 'ActuatorCmd"
  "2550283e9583221aecb97179737d09a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorCmd>)))
  "Returns full string definition for message of type '<ActuatorCmd>"
  (cl:format cl:nil "Header header~%bool actuate~%std_msgs/String body_name~%bool use_offset~%geometry_msgs/Pose body_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorCmd)))
  "Returns full string definition for message of type 'ActuatorCmd"
  (cl:format cl:nil "Header header~%bool actuate~%std_msgs/String body_name~%bool use_offset~%geometry_msgs/Pose body_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorCmd
    (cl:cons ':header (header msg))
    (cl:cons ':actuate (actuate msg))
    (cl:cons ':body_name (body_name msg))
    (cl:cons ':use_offset (use_offset msg))
    (cl:cons ':body_offset (body_offset msg))
))
