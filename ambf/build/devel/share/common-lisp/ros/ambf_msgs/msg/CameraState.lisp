; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude CameraState.msg.html

(cl:defclass <CameraState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sim_step
    :reader sim_step
    :initarg :sim_step
    :type cl:integer
    :initform 0)
   (parent_name
    :reader parent_name
    :initarg :parent_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (wall_time
    :reader wall_time
    :initarg :wall_time
    :type cl:float
    :initform 0.0)
   (sim_time
    :reader sim_time
    :initarg :sim_time
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass CameraState (<CameraState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<CameraState> is deprecated: use ambf_msgs-msg:CameraState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sim_step-val :lambda-list '(m))
(cl:defmethod sim_step-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:sim_step-val is deprecated.  Use ambf_msgs-msg:sim_step instead.")
  (sim_step m))

(cl:ensure-generic-function 'parent_name-val :lambda-list '(m))
(cl:defmethod parent_name-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:parent_name-val is deprecated.  Use ambf_msgs-msg:parent_name instead.")
  (parent_name m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:name-val is deprecated.  Use ambf_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'wall_time-val :lambda-list '(m))
(cl:defmethod wall_time-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:wall_time-val is deprecated.  Use ambf_msgs-msg:wall_time instead.")
  (wall_time m))

(cl:ensure-generic-function 'sim_time-val :lambda-list '(m))
(cl:defmethod sim_time-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:sim_time-val is deprecated.  Use ambf_msgs-msg:sim_time instead.")
  (sim_time m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:pose-val is deprecated.  Use ambf_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraState>) ostream)
  "Serializes a message object of type '<CameraState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sim_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sim_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sim_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sim_step)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parent_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wall_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sim_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraState>) istream)
  "Deserializes a message object of type '<CameraState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sim_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sim_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sim_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sim_step)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parent_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wall_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sim_time) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraState>)))
  "Returns string type for a message object of type '<CameraState>"
  "ambf_msgs/CameraState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraState)))
  "Returns string type for a message object of type 'CameraState"
  "ambf_msgs/CameraState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraState>)))
  "Returns md5sum for a message object of type '<CameraState>"
  "7716746e31e5fa6ac8060b7aeb14a0d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraState)))
  "Returns md5sum for a message object of type 'CameraState"
  "7716746e31e5fa6ac8060b7aeb14a0d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraState>)))
  "Returns full string definition for message of type '<CameraState>"
  (cl:format cl:nil "Header header~%uint32 sim_step~%std_msgs/String parent_name~%std_msgs/String name~%float32 wall_time~%float32 sim_time~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraState)))
  "Returns full string definition for message of type 'CameraState"
  (cl:format cl:nil "Header header~%uint32 sim_step~%std_msgs/String parent_name~%std_msgs/String name~%float32 wall_time~%float32 sim_time~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parent_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraState>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraState
    (cl:cons ':header (header msg))
    (cl:cons ':sim_step (sim_step msg))
    (cl:cons ':parent_name (parent_name msg))
    (cl:cons ':name (name msg))
    (cl:cons ':wall_time (wall_time msg))
    (cl:cons ':sim_time (sim_time msg))
    (cl:cons ':pose (pose msg))
))
