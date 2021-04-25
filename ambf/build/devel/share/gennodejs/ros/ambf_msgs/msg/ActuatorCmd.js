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

class ActuatorCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.actuate = null;
      this.body_name = null;
      this.use_offset = null;
      this.body_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('actuate')) {
        this.actuate = initObj.actuate
      }
      else {
        this.actuate = false;
      }
      if (initObj.hasOwnProperty('body_name')) {
        this.body_name = initObj.body_name
      }
      else {
        this.body_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('use_offset')) {
        this.use_offset = initObj.use_offset
      }
      else {
        this.use_offset = false;
      }
      if (initObj.hasOwnProperty('body_offset')) {
        this.body_offset = initObj.body_offset
      }
      else {
        this.body_offset = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [actuate]
    bufferOffset = _serializer.bool(obj.actuate, buffer, bufferOffset);
    // Serialize message field [body_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.body_name, buffer, bufferOffset);
    // Serialize message field [use_offset]
    bufferOffset = _serializer.bool(obj.use_offset, buffer, bufferOffset);
    // Serialize message field [body_offset]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.body_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorCmd
    let len;
    let data = new ActuatorCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [actuate]
    data.actuate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [body_name]
    data.body_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [use_offset]
    data.use_offset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [body_offset]
    data.body_offset = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.body_name);
    return length + 58;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ambf_msgs/ActuatorCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2550283e9583221aecb97179737d09a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool actuate
    std_msgs/String body_name
    bool use_offset
    geometry_msgs/Pose body_offset
    
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
    MSG: std_msgs/String
    string data
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.actuate !== undefined) {
      resolved.actuate = msg.actuate;
    }
    else {
      resolved.actuate = false
    }

    if (msg.body_name !== undefined) {
      resolved.body_name = std_msgs.msg.String.Resolve(msg.body_name)
    }
    else {
      resolved.body_name = new std_msgs.msg.String()
    }

    if (msg.use_offset !== undefined) {
      resolved.use_offset = msg.use_offset;
    }
    else {
      resolved.use_offset = false
    }

    if (msg.body_offset !== undefined) {
      resolved.body_offset = geometry_msgs.msg.Pose.Resolve(msg.body_offset)
    }
    else {
      resolved.body_offset = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = ActuatorCmd;
