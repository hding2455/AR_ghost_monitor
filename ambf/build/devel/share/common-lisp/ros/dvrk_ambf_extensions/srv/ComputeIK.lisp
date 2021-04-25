; Auto-generated. Do not edit!


(cl:in-package dvrk_ambf_extensions-srv)


;//! \htmlinclude ComputeIK-request.msg.html

(cl:defclass <ComputeIK-request> (roslisp-msg-protocol:ros-message)
  ((T_7_0
    :reader T_7_0
    :initarg :T_7_0
    :type dvrk_ambf_extensions-msg:HomogenousTransform
    :initform (cl:make-instance 'dvrk_ambf_extensions-msg:HomogenousTransform)))
)

(cl:defclass ComputeIK-request (<ComputeIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dvrk_ambf_extensions-srv:<ComputeIK-request> is deprecated: use dvrk_ambf_extensions-srv:ComputeIK-request instead.")))

(cl:ensure-generic-function 'T_7_0-val :lambda-list '(m))
(cl:defmethod T_7_0-val ((m <ComputeIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dvrk_ambf_extensions-srv:T_7_0-val is deprecated.  Use dvrk_ambf_extensions-srv:T_7_0 instead.")
  (T_7_0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeIK-request>) ostream)
  "Serializes a message object of type '<ComputeIK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'T_7_0) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeIK-request>) istream)
  "Deserializes a message object of type '<ComputeIK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'T_7_0) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeIK-request>)))
  "Returns string type for a service object of type '<ComputeIK-request>"
  "dvrk_ambf_extensions/ComputeIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeIK-request)))
  "Returns string type for a service object of type 'ComputeIK-request"
  "dvrk_ambf_extensions/ComputeIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeIK-request>)))
  "Returns md5sum for a message object of type '<ComputeIK-request>"
  "8e9b7fd149152a96b552a17e15f68358")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeIK-request)))
  "Returns md5sum for a message object of type 'ComputeIK-request"
  "8e9b7fd149152a96b552a17e15f68358")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeIK-request>)))
  "Returns full string definition for message of type '<ComputeIK-request>"
  (cl:format cl:nil "HomogenousTransform T_7_0~%~%================================================================================~%MSG: dvrk_ambf_extensions/HomogenousTransform~%float64[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeIK-request)))
  "Returns full string definition for message of type 'ComputeIK-request"
  (cl:format cl:nil "HomogenousTransform T_7_0~%~%================================================================================~%MSG: dvrk_ambf_extensions/HomogenousTransform~%float64[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeIK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'T_7_0))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeIK-request
    (cl:cons ':T_7_0 (T_7_0 msg))
))
;//! \htmlinclude ComputeIK-response.msg.html

(cl:defclass <ComputeIK-response> (roslisp-msg-protocol:ros-message)
  ((q_des
    :reader q_des
    :initarg :q_des
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ComputeIK-response (<ComputeIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dvrk_ambf_extensions-srv:<ComputeIK-response> is deprecated: use dvrk_ambf_extensions-srv:ComputeIK-response instead.")))

(cl:ensure-generic-function 'q_des-val :lambda-list '(m))
(cl:defmethod q_des-val ((m <ComputeIK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dvrk_ambf_extensions-srv:q_des-val is deprecated.  Use dvrk_ambf_extensions-srv:q_des instead.")
  (q_des m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeIK-response>) ostream)
  "Serializes a message object of type '<ComputeIK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'q_des))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'q_des))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeIK-response>) istream)
  "Deserializes a message object of type '<ComputeIK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'q_des) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'q_des)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeIK-response>)))
  "Returns string type for a service object of type '<ComputeIK-response>"
  "dvrk_ambf_extensions/ComputeIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeIK-response)))
  "Returns string type for a service object of type 'ComputeIK-response"
  "dvrk_ambf_extensions/ComputeIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeIK-response>)))
  "Returns md5sum for a message object of type '<ComputeIK-response>"
  "8e9b7fd149152a96b552a17e15f68358")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeIK-response)))
  "Returns md5sum for a message object of type 'ComputeIK-response"
  "8e9b7fd149152a96b552a17e15f68358")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeIK-response>)))
  "Returns full string definition for message of type '<ComputeIK-response>"
  (cl:format cl:nil "float64[] q_des~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeIK-response)))
  "Returns full string definition for message of type 'ComputeIK-response"
  (cl:format cl:nil "float64[] q_des~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeIK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q_des) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeIK-response
    (cl:cons ':q_des (q_des msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeIK)))
  'ComputeIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeIK)))
  'ComputeIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeIK)))
  "Returns string type for a service object of type '<ComputeIK>"
  "dvrk_ambf_extensions/ComputeIK")