; Auto-generated. Do not edit!


(cl:in-package ambf_msgs-msg)


;//! \htmlinclude VehicleCmd.msg.html

(cl:defclass <VehicleCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (chassis_wrench
    :reader chassis_wrench
    :initarg :chassis_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (wheel_steering
    :reader wheel_steering
    :initarg :wheel_steering
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_power
    :reader wheel_power
    :initarg :wheel_power
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_brake
    :reader wheel_brake
    :initarg :wheel_brake
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (brake
    :reader brake
    :initarg :brake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleCmd (<VehicleCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ambf_msgs-msg:<VehicleCmd> is deprecated: use ambf_msgs-msg:VehicleCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:header-val is deprecated.  Use ambf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'chassis_wrench-val :lambda-list '(m))
(cl:defmethod chassis_wrench-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:chassis_wrench-val is deprecated.  Use ambf_msgs-msg:chassis_wrench instead.")
  (chassis_wrench m))

(cl:ensure-generic-function 'wheel_steering-val :lambda-list '(m))
(cl:defmethod wheel_steering-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:wheel_steering-val is deprecated.  Use ambf_msgs-msg:wheel_steering instead.")
  (wheel_steering m))

(cl:ensure-generic-function 'wheel_power-val :lambda-list '(m))
(cl:defmethod wheel_power-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:wheel_power-val is deprecated.  Use ambf_msgs-msg:wheel_power instead.")
  (wheel_power m))

(cl:ensure-generic-function 'wheel_brake-val :lambda-list '(m))
(cl:defmethod wheel_brake-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:wheel_brake-val is deprecated.  Use ambf_msgs-msg:wheel_brake instead.")
  (wheel_brake m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ambf_msgs-msg:brake-val is deprecated.  Use ambf_msgs-msg:brake instead.")
  (brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCmd>) ostream)
  "Serializes a message object of type '<VehicleCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chassis_wrench) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_steering))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_power))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_brake))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCmd>) istream)
  "Deserializes a message object of type '<VehicleCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chassis_wrench) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_steering) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_steering)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_power) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_power)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_brake) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_brake)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'brake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCmd>)))
  "Returns string type for a message object of type '<VehicleCmd>"
  "ambf_msgs/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCmd)))
  "Returns string type for a message object of type 'VehicleCmd"
  "ambf_msgs/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCmd>)))
  "Returns md5sum for a message object of type '<VehicleCmd>"
  "20858f9fdd87217d00304616067bb7b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCmd)))
  "Returns md5sum for a message object of type 'VehicleCmd"
  "20858f9fdd87217d00304616067bb7b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCmd>)))
  "Returns full string definition for message of type '<VehicleCmd>"
  (cl:format cl:nil "Header header~%geometry_msgs/Wrench chassis_wrench~%float32[] wheel_steering~%float32[] wheel_power~%float32[] wheel_brake~%bool brake~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCmd)))
  "Returns full string definition for message of type 'VehicleCmd"
  (cl:format cl:nil "Header header~%geometry_msgs/Wrench chassis_wrench~%float32[] wheel_steering~%float32[] wheel_power~%float32[] wheel_brake~%bool brake~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chassis_wrench))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_steering) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_power) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_brake) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCmd
    (cl:cons ':header (header msg))
    (cl:cons ':chassis_wrench (chassis_wrench msg))
    (cl:cons ':wheel_steering (wheel_steering msg))
    (cl:cons ':wheel_power (wheel_power msg))
    (cl:cons ':wheel_brake (wheel_brake msg))
    (cl:cons ':brake (brake msg))
))
