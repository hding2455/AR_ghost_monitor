// Auto-generated. Do not edit!

// (in-package ambf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RigidBodyCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cartesian_cmd_type = null;
      this.pose = null;
      this.wrench = null;
      this.twist = null;
      this.joint_cmds_types = null;
      this.joint_cmds = null;
      this.publish_children_names = null;
      this.publish_joint_names = null;
      this.publish_joint_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cartesian_cmd_type')) {
        this.cartesian_cmd_type = initObj.cartesian_cmd_type
      }
      else {
        this.cartesian_cmd_type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('joint_cmds_types')) {
        this.joint_cmds_types = initObj.joint_cmds_types
      }
      else {
        this.joint_cmds_types = [];
      }
      if (initObj.hasOwnProperty('joint_cmds')) {
        this.joint_cmds = initObj.joint_cmds
      }
      else {
        this.joint_cmds = [];
      }
      if (initObj.hasOwnProperty('publish_children_names')) {
        this.publish_children_names = initObj.publish_children_names
      }
      else {
        this.publish_children_names = false;
      }
      if (initObj.hasOwnProperty('publish_joint_names')) {
        this.publish_joint_names = initObj.publish_joint_names
      }
      else {
        this.publish_joint_names = false;
      }
      if (initObj.hasOwnProperty('publish_joint_positions')) {
        this.publish_joint_positions = initObj.publish_joint_positions
      }
      else {
        this.publish_joint_positions = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RigidBodyCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cartesian_cmd_type]
    bufferOffset = _serializer.int8(obj.cartesian_cmd_type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.wrench, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [joint_cmds_types]
    bufferOffset = _arraySerializer.int8(obj.joint_cmds_types, buffer, bufferOffset, null);
    // Serialize message field [joint_cmds]
    bufferOffset = _arraySerializer.float32(obj.joint_cmds, buffer, bufferOffset, null);
    // Serialize message field [publish_children_names]
    bufferOffset = _serializer.bool(obj.publish_children_names, buffer, bufferOffset);
    // Serialize message field [publish_joint_names]
    bufferOffset = _serializer.bool(obj.publish_joint_names, buffer, bufferOffset);
    // Serialize message field [publish_joint_positions]
    bufferOffset = _serializer.bool(obj.publish_joint_positions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RigidBodyCmd
    let len;
    let data = new RigidBodyCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cartesian_cmd_type]
    data.cartesian_cmd_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [wrench]
    data.wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_cmds_types]
    data.joint_cmds_types = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [joint_cmds]
    data.joint_cmds = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [publish_children_names]
    data.publish_children_names = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [publish_joint_names]
    data.publish_joint_names = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [publish_joint_positions]
    data.publish_joint_positions = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.joint_cmds_types.length;
    length += 4 * object.joint_cmds.length;
    return length + 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ambf_msgs/RigidBodyCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c54fc48da5e84240a367eff7725e74b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RigidBodyCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cartesian_cmd_type !== undefined) {
      resolved.cartesian_cmd_type = msg.cartesian_cmd_type;
    }
    else {
      resolved.cartesian_cmd_type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = geometry_msgs.msg.Wrench.Resolve(msg.wrench)
    }
    else {
      resolved.wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.Twist()
    }

    if (msg.joint_cmds_types !== undefined) {
      resolved.joint_cmds_types = msg.joint_cmds_types;
    }
    else {
      resolved.joint_cmds_types = []
    }

    if (msg.joint_cmds !== undefined) {
      resolved.joint_cmds = msg.joint_cmds;
    }
    else {
      resolved.joint_cmds = []
    }

    if (msg.publish_children_names !== undefined) {
      resolved.publish_children_names = msg.publish_children_names;
    }
    else {
      resolved.publish_children_names = false
    }

    if (msg.publish_joint_names !== undefined) {
      resolved.publish_joint_names = msg.publish_joint_names;
    }
    else {
      resolved.publish_joint_names = false
    }

    if (msg.publish_joint_positions !== undefined) {
      resolved.publish_joint_positions = msg.publish_joint_positions;
    }
    else {
      resolved.publish_joint_positions = false
    }

    return resolved;
    }
};

// Constants for message
RigidBodyCmd.Constants = {
  TYPE_FORCE: 0,
  TYPE_POSITION: 1,
  TYPE_VELOCITY: 2,
}

module.exports = RigidBodyCmd;
