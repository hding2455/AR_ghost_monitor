;; Auto-generated. Do not edit!


(when (boundp 'ambf_msgs::RigidBodyCmd)
  (if (not (find-package "AMBF_MSGS"))
    (make-package "AMBF_MSGS"))
  (shadow 'RigidBodyCmd (find-package "AMBF_MSGS")))
(unless (find-package "AMBF_MSGS::RIGIDBODYCMD")
  (make-package "AMBF_MSGS::RIGIDBODYCMD"))

(in-package "ROS")
;;//! \htmlinclude RigidBodyCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_FORCE*" (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(shadow '*TYPE_FORCE* (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(defconstant ambf_msgs::RigidBodyCmd::*TYPE_FORCE* 0)
(intern "*TYPE_POSITION*" (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(shadow '*TYPE_POSITION* (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(defconstant ambf_msgs::RigidBodyCmd::*TYPE_POSITION* 1)
(intern "*TYPE_VELOCITY*" (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(shadow '*TYPE_VELOCITY* (find-package "AMBF_MSGS::RIGIDBODYCMD"))
(defconstant ambf_msgs::RigidBodyCmd::*TYPE_VELOCITY* 2)
(defclass ambf_msgs::RigidBodyCmd
  :super ros::object
  :slots (_header _cartesian_cmd_type _pose _wrench _twist _joint_cmds_types _joint_cmds _publish_children_names _publish_joint_names _publish_joint_positions ))

(defmethod ambf_msgs::RigidBodyCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cartesian_cmd_type __cartesian_cmd_type) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:wrench __wrench) (instance geometry_msgs::Wrench :init))
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:joint_cmds_types __joint_cmds_types) (make-array 0 :initial-element 0 :element-type :integer))
    ((:joint_cmds __joint_cmds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:publish_children_names __publish_children_names) nil)
    ((:publish_joint_names __publish_joint_names) nil)
    ((:publish_joint_positions __publish_joint_positions) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cartesian_cmd_type (round __cartesian_cmd_type))
   (setq _pose __pose)
   (setq _wrench __wrench)
   (setq _twist __twist)
   (setq _joint_cmds_types __joint_cmds_types)
   (setq _joint_cmds __joint_cmds)
   (setq _publish_children_names __publish_children_names)
   (setq _publish_joint_names __publish_joint_names)
   (setq _publish_joint_positions __publish_joint_positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cartesian_cmd_type
   (&optional __cartesian_cmd_type)
   (if __cartesian_cmd_type (setq _cartesian_cmd_type __cartesian_cmd_type)) _cartesian_cmd_type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:wrench
   (&rest __wrench)
   (if (keywordp (car __wrench))
       (send* _wrench __wrench)
     (progn
       (if __wrench (setq _wrench (car __wrench)))
       _wrench)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:joint_cmds_types
   (&optional __joint_cmds_types)
   (if __joint_cmds_types (setq _joint_cmds_types __joint_cmds_types)) _joint_cmds_types)
  (:joint_cmds
   (&optional __joint_cmds)
   (if __joint_cmds (setq _joint_cmds __joint_cmds)) _joint_cmds)
  (:publish_children_names
   (&optional __publish_children_names)
   (if __publish_children_names (setq _publish_children_names __publish_children_names)) _publish_children_names)
  (:publish_joint_names
   (&optional __publish_joint_names)
   (if __publish_joint_names (setq _publish_joint_names __publish_joint_names)) _publish_joint_names)
  (:publish_joint_positions
   (&optional __publish_joint_positions)
   (if __publish_joint_positions (setq _publish_joint_positions __publish_joint_positions)) _publish_joint_positions)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _cartesian_cmd_type
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Wrench _wrench
    (send _wrench :serialization-length)
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; int8[] _joint_cmds_types
    (* 1    (length _joint_cmds_types)) 4
    ;; float32[] _joint_cmds
    (* 4    (length _joint_cmds)) 4
    ;; bool _publish_children_names
    1
    ;; bool _publish_joint_names
    1
    ;; bool _publish_joint_positions
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _cartesian_cmd_type
       (write-byte _cartesian_cmd_type s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Wrench _wrench
       (send _wrench :serialize s)
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; int8[] _joint_cmds_types
     (write-long (length _joint_cmds_types) s)
     (dotimes (i (length _joint_cmds_types))
       (write-byte (elt _joint_cmds_types i) s)
       )
     ;; float32[] _joint_cmds
     (write-long (length _joint_cmds) s)
     (dotimes (i (length _joint_cmds))
       (sys::poke (elt _joint_cmds i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _publish_children_names
       (if _publish_children_names (write-byte -1 s) (write-byte 0 s))
     ;; bool _publish_joint_names
       (if _publish_joint_names (write-byte -1 s) (write-byte 0 s))
     ;; bool _publish_joint_positions
       (if _publish_joint_positions (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _cartesian_cmd_type
     (setq _cartesian_cmd_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cartesian_cmd_type 127) (setq _cartesian_cmd_type (- _cartesian_cmd_type 256)))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Wrench _wrench
     (send _wrench :deserialize buf ptr-) (incf ptr- (send _wrench :serialization-length))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; int8[] _joint_cmds_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_cmds_types (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _joint_cmds_types i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _joint_cmds_types i) 127) (setf (elt _joint_cmds_types i) (- (elt _joint_cmds_types i) 256)))
     ))
   ;; float32[] _joint_cmds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_cmds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_cmds i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _publish_children_names
     (setq _publish_children_names (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _publish_joint_names
     (setq _publish_joint_names (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _publish_joint_positions
     (setq _publish_joint_positions (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ambf_msgs::RigidBodyCmd :md5sum-) "c54fc48da5e84240a367eff7725e74b4")
(setf (get ambf_msgs::RigidBodyCmd :datatype-) "ambf_msgs/RigidBodyCmd")
(setf (get ambf_msgs::RigidBodyCmd :definition-)
      "Header header
int8 TYPE_FORCE=0
int8 TYPE_POSITION=1
int8 TYPE_VELOCITY=2
int8 cartesian_cmd_type # The type of cartesian cmd i.e. F/P/V
geometry_msgs/Pose pose
geometry_msgs/Wrench wrench
geometry_msgs/Twist twist
int8[] joint_cmds_types # For each joint, the type of cmd i.e. F/P/V
float32[] joint_cmds
bool publish_children_names
bool publish_joint_names
bool publish_joint_positions

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
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :ambf_msgs/RigidBodyCmd "c54fc48da5e84240a367eff7725e74b4")


