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

class VehicleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sim_step = null;
      this.name = null;
      this.wall_time = null;
      this.sim_time = null;
      this.mass = null;
      this.pInertia = null;
      this.pose = null;
      this.wheel_count = null;
      this.wheel_offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sim_step')) {
        this.sim_step = initObj.sim_step
      }
      else {
        this.sim_step = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('wall_time')) {
        this.wall_time = initObj.wall_time
      }
      else {
        this.wall_time = 0.0;
      }
      if (initObj.hasOwnProperty('sim_time')) {
        this.sim_time = initObj.sim_time
      }
      else {
        this.sim_time = 0.0;
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('pInertia')) {
        this.pInertia = initObj.pInertia
      }
      else {
        this.pInertia = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('wheel_count')) {
        this.wheel_count = initObj.wheel_count
      }
      else {
        this.wheel_count = 0;
      }
      if (initObj.hasOwnProperty('wheel_offsets')) {
        this.wheel_offsets = initObj.wheel_offsets
      }
      else {
        this.wheel_offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sim_step]
    bufferOffset = _serializer.uint32(obj.sim_step, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = std_msgs.msg.String.serialize(obj.name, buffer, bufferOffset);
    // Serialize message field [wall_time]
    bufferOffset = _serializer.float32(obj.wall_time, buffer, bufferOffset);
    // Serialize message field [sim_time]
    bufferOffset = _serializer.float32(obj.sim_time, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float32(obj.mass, buffer, bufferOffset);
    // Serialize message field [pInertia]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pInertia, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [wheel_count]
    bufferOffset = _serializer.int8(obj.wheel_count, buffer, bufferOffset);
    // Serialize message field [wheel_offsets]
    // Serialize the length for message field [wheel_offsets]
    bufferOffset = _serializer.uint32(obj.wheel_offsets.length, buffer, bufferOffset);
    obj.wheel_offsets.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleState
    let len;
    let data = new VehicleState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sim_step]
    data.sim_step = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [wall_time]
    data.wall_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sim_time]
    data.sim_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pInertia]
    data.pInertia = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_count]
    data.wheel_count = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wheel_offsets]
    // Deserialize array length for message field [wheel_offsets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wheel_offsets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheel_offsets[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.name);
    length += 56 * object.wheel_offsets.length;
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ambf_msgs/VehicleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e44991cffd599ccc408523398b06f19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 sim_step
    std_msgs/String name
    float32 wall_time
    float32 sim_time
    float32 mass
    geometry_msgs/Point pInertia
    geometry_msgs/Pose pose
    int8 wheel_count
    geometry_msgs/Pose[] wheel_offsets
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    const resolved = new VehicleState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sim_step !== undefined) {
      resolved.sim_step = msg.sim_step;
    }
    else {
      resolved.sim_step = 0
    }

    if (msg.name !== undefined) {
      resolved.name = std_msgs.msg.String.Resolve(msg.name)
    }
    else {
      resolved.name = new std_msgs.msg.String()
    }

    if (msg.wall_time !== undefined) {
      resolved.wall_time = msg.wall_time;
    }
    else {
      resolved.wall_time = 0.0
    }

    if (msg.sim_time !== undefined) {
      resolved.sim_time = msg.sim_time;
    }
    else {
      resolved.sim_time = 0.0
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.pInertia !== undefined) {
      resolved.pInertia = geometry_msgs.msg.Point.Resolve(msg.pInertia)
    }
    else {
      resolved.pInertia = new geometry_msgs.msg.Point()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.wheel_count !== undefined) {
      resolved.wheel_count = msg.wheel_count;
    }
    else {
      resolved.wheel_count = 0
    }

    if (msg.wheel_offsets !== undefined) {
      resolved.wheel_offsets = new Array(msg.wheel_offsets.length);
      for (let i = 0; i < resolved.wheel_offsets.length; ++i) {
        resolved.wheel_offsets[i] = geometry_msgs.msg.Pose.Resolve(msg.wheel_offsets[i]);
      }
    }
    else {
      resolved.wheel_offsets = []
    }

    return resolved;
    }
};

module.exports = VehicleState;
