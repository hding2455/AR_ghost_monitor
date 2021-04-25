; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude RigidBodyCmd.msg.html

(cl:defclass <RigidBodyCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cartesian_cmd_type
    :reader cartesian_cmd_type
    :initarg :cartesian_cmd_type
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (joint_cmds_types
    :reader joint_cmds_types
    :initarg :joint_cmds_types
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (joint_cmds
    :reader joint_cmds
    :initarg :joint_cmds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (publish_children_names
    :reader publish_children_names
    :initarg :publish_children_names
    :type cl:boolean
    :initform cl:nil)
   (publish_joint_names
    :reader publish_joint_names
    :initarg :publish_joint_names
    :type cl:boolean
    :initform cl:nil)
   (publish_joint_positions
    :reader publish_joint_positions
    :initarg :publish_joint_positions
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RigidBodyCmd (<RigidBodyCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidBodyCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidBodyCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<RigidBodyCmd> is deprecated: use ambf_msgs-msg:RigidBodyCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cartesian_cmd_type-val :lambda-list '(m))
(cl:defmethod cartesian_cmd_type-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:cartesian_cmd_type-val is deprecated.  Use ambf_msgs-msg:cartesian_cmd_type instead.")
  (cartesian_cmd_type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:pose-val is deprecated.  Use ambf_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:wrench-val is deprecated.  Use ambf_msgs-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:twist-val is deprecated.  Use ambf_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'joint_cmds_types-val :lambda-list '(m))
(cl:defmethod joint_cmds_types-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:joint_cmds_types-val is deprecated.  Use ambf_msgs-msg:joint_cmds_types instead.")
  (joint_cmds_types m))

(cl:ensure-generic-function 'joint_cmds-val :lambda-list '(m))
(cl:defmethod joint_cmds-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:joint_cmds-val is deprecated.  Use ambf_msgs-msg:joint_cmds instead.")
  (joint_cmds m))

(cl:ensure-generic-function 'publish_children_names-val :lambda-list '(m))
(cl:defmethod publish_children_names-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:publish_children_names-val is deprecated.  Use ambf_msgs-msg:publish_children_names instead.")
  (publish_children_names m))

(cl:ensure-generic-function 'publish_joint_names-val :lambda-list '(m))
(cl:defmethod publish_joint_names-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:publish_joint_names-val is deprecated.  Use ambf_msgs-msg:publish_joint_names instead.")
  (publish_joint_names m))

(cl:ensure-generic-function 'publish_joint_positions-val :lambda-list '(m))
(cl:defmethod publish_joint_positions-val ((m <RigidBodyCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:publish_joint_positions-val is deprecated.  Use ambf_msgs-msg:publish_joint_positions instead.")
  (publish_joint_positions m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RigidBodyCmd>)))
    "Constants for message type '<RigidBodyCmd>"
  '((:TYPE_FORCE . 0)
    (:TYPE_POSITION . 1)
    (:TYPE_VELOCITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RigidBodyCmd)))
    "Constants for message type 'RigidBodyCmd"
  '((:TYPE_FORCE . 0)
    (:TYPE_POSITION . 1)
    (:TYPE_VELOCITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidBodyCmd>) ostream)
  "Serializes a message object of type '<RigidBodyCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cartesian_cmd_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_cmds_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'joint_cmds_types))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_cmds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_cmds))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_children_names) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_joint_names) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_joint_positions) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidBodyCmd>) istream)
  "Deserializes a message object of type '<RigidBodyCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cartesian_cmd_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_cmds_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_cmds_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_cmds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_cmds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'publish_children_names) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'publish_joint_names) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'publish_joint_positions) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidBodyCmd>)))
  "Returns string type for a message object of type '<RigidBodyCmd>"
  "ambf_msgs/RigidBodyCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidBodyCmd)))
  "Returns string type for a message object of type 'RigidBodyCmd"
  "ambf_msgs/RigidBodyCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidBodyCmd>)))
  "Returns md5sum for a message object of type '<RigidBodyCmd>"
  "c54fc48da5e84240a367eff7725e74b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidBodyCmd)))
  "Returns md5sum for a message object of type 'RigidBodyCmd"
  "c54fc48da5e84240a367eff7725e74b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidBodyCmd>)))
  "Returns full string definition for message of type '<RigidBodyCmd>"
  (cl:format cl:nil "Header header~%int8 TYPE_FORCE=0~%int8 TYPE_POSITION=1~%int8 TYPE_VELOCITY=2~%int8 cartesian_cmd_type # The type of cartesian cmd i.e. F/P/V~%geometry_msgs/Pose pose~%geometry_msgs/Wrench wrench~%geometry_msgs/Twist twist~%int8[] joint_cmds_types # For each joint, the type of cmd i.e. F/P/V~%float32[] joint_cmds~%bool publish_children_names~%bool publish_joint_names~%bool publish_joint_positions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidBodyCmd)))
  "Returns full string definition for message of type 'RigidBodyCmd"
  (cl:format cl:nil "Header header~%int8 TYPE_FORCE=0~%int8 TYPE_POSITION=1~%int8 TYPE_VELOCITY=2~%int8 cartesian_cmd_type # The type of cartesian cmd i.e. F/P/V~%geometry_msgs/Pose pose~%geometry_msgs/Wrench wrench~%geometry_msgs/Twist twist~%int8[] joint_cmds_types # For each joint, the type of cmd i.e. F/P/V~%float32[] joint_cmds~%bool publish_children_names~%bool publish_joint_names~%bool publish_joint_positions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidBodyCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_cmds_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_cmds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidBodyCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidBodyCmd
    (cl:cons ':header (header msg))
    (cl:cons ':cartesian_cmd_type (cartesian_cmd_type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':joint_cmds_types (joint_cmds_types msg))
    (cl:cons ':joint_cmds (joint_cmds msg))
    (cl:cons ':publish_children_names (publish_children_names msg))
    (cl:cons ':publish_joint_names (publish_joint_names msg))
    (cl:cons ':publish_joint_positions (publish_joint_positions msg))
))
