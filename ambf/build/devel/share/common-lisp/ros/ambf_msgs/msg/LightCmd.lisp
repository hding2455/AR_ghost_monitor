; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude LightCmd.msg.html

(cl:defclass <LightCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enable_position_controller
    :reader enable_position_controller
    :initarg :enable_position_controller
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass LightCmd (<LightCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<LightCmd> is deprecated: use ambf_msgs-msg:LightCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enable_position_controller-val :lambda-list '(m))
(cl:defmethod enable_position_controller-val ((m <LightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:enable_position_controller-val is deprecated.  Use ambf_msgs-msg:enable_position_controller instead.")
  (enable_position_controller m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LightCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:pose-val is deprecated.  Use ambf_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightCmd>) ostream)
  "Serializes a message object of type '<LightCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_position_controller) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightCmd>) istream)
  "Deserializes a message object of type '<LightCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enable_position_controller) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightCmd>)))
  "Returns string type for a message object of type '<LightCmd>"
  "ambf_msgs/LightCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightCmd)))
  "Returns string type for a message object of type 'LightCmd"
  "ambf_msgs/LightCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightCmd>)))
  "Returns md5sum for a message object of type '<LightCmd>"
  "4c77af9a51e6b28efe30862e7d6b0479")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightCmd)))
  "Returns md5sum for a message object of type 'LightCmd"
  "4c77af9a51e6b28efe30862e7d6b0479")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightCmd>)))
  "Returns full string definition for message of type '<LightCmd>"
  (cl:format cl:nil "Header header~%bool enable_position_controller~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightCmd)))
  "Returns full string definition for message of type 'LightCmd"
  (cl:format cl:nil "Header header~%bool enable_position_controller~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LightCmd
    (cl:cons ':header (header msg))
    (cl:cons ':enable_position_controller (enable_position_controller msg))
    (cl:cons ':pose (pose msg))
))
