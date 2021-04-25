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

class SensorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sim_step = null;
      this.type = null;
      this.parent_name = null;
      this.name = null;
      this.wall_time = null;
      this.sim_time = null;
      this.pose = null;
      this.count = null;
      this.triggered = null;
      this.range = null;
      this.measurement = null;
      this.sensed_objects = null;
      this.sensed_objects_map = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('parent_name')) {
        this.parent_name = initObj.parent_name
      }
      else {
        this.parent_name = new std_msgs.msg.String();
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
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('triggered')) {
        this.triggered = initObj.triggered
      }
      else {
        this.triggered = [];
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = [];
      }
      if (initObj.hasOwnProperty('measurement')) {
        this.measurement = initObj.measurement
      }
      else {
        this.measurement = [];
      }
      if (initObj.hasOwnProperty('sensed_objects')) {
        this.sensed_objects = initObj.sensed_objects
      }
      else {
        this.sensed_objects = [];
      }
      if (initObj.hasOwnProperty('sensed_objects_map')) {
        this.sensed_objects_map = initObj.sensed_objects_map
      }
      else {
        this.sensed_objects_map = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sim_step]
    bufferOffset = _serializer.uint32(obj.sim_step, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.String.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [parent_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.parent_name, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = std_msgs.msg.String.serialize(obj.name, buffer, bufferOffset);
    // Serialize message field [wall_time]
    bufferOffset = _serializer.float32(obj.wall_time, buffer, bufferOffset);
    // Serialize message field [sim_time]
    bufferOffset = _serializer.float32(obj.sim_time, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint32(obj.count, buffer, bufferOffset);
    // Serialize message field [triggered]
    bufferOffset = _arraySerializer.bool(obj.triggered, buffer, bufferOffset, null);
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float32(obj.range, buffer, bufferOffset, null);
    // Serialize message field [measurement]
    bufferOffset = _arraySerializer.float32(obj.measurement, buffer, bufferOffset, null);
    // Serialize message field [sensed_objects]
    // Serialize the length for message field [sensed_objects]
    bufferOffset = _serializer.uint32(obj.sensed_objects.length, buffer, bufferOffset);
    obj.sensed_objects.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensed_objects_map]
    bufferOffset = _arraySerializer.uint8(obj.sensed_objects_map, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorState
    let len;
    let data = new SensorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sim_step]
    data.sim_step = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_name]
    data.parent_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [wall_time]
    data.wall_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sim_time]
    data.sim_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [triggered]
    data.triggered = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [measurement]
    data.measurement = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [sensed_objects]
    // Deserialize array length for message field [sensed_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensed_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensed_objects[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensed_objects_map]
    data.sensed_objects_map = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.type);
    length += std_msgs.msg.String.getMessageSize(object.parent_name);
    length += std_msgs.msg.String.getMessageSize(object.name);
    length += object.triggered.length;
    length += 4 * object.range.length;
    length += 4 * object.measurement.length;
    object.sensed_objects.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += object.sensed_objects_map.length;
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ambf_msgs/SensorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82fb33535a7311b9256cac9ac5115e67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 sim_step
    std_msgs/String type
    std_msgs/String parent_name
    std_msgs/String name
    float32 wall_time
    float32 sim_time
    geometry_msgs/Pose pose
    uint32 count
    bool[] triggered
    float32[] range
    float32[] measurement
    std_msgs/String[] sensed_objects
    uint8[] sensed_objects_map
    
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
    const resolved = new SensorState(null);
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

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.String.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.String()
    }

    if (msg.parent_name !== undefined) {
      resolved.parent_name = std_msgs.msg.String.Resolve(msg.parent_name)
    }
    else {
      resolved.parent_name = new std_msgs.msg.String()
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

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.triggered !== undefined) {
      resolved.triggered = msg.triggered;
    }
    else {
      resolved.triggered = []
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = []
    }

    if (msg.measurement !== undefined) {
      resolved.measurement = msg.measurement;
    }
    else {
      resolved.measurement = []
    }

    if (msg.sensed_objects !== undefined) {
      resolved.sensed_objects = new Array(msg.sensed_objects.length);
      for (let i = 0; i < resolved.sensed_objects.length; ++i) {
        resolved.sensed_objects[i] = std_msgs.msg.String.Resolve(msg.sensed_objects[i]);
      }
    }
    else {
      resolved.sensed_objects = []
    }

    if (msg.sensed_objects_map !== undefined) {
      resolved.sensed_objects_map = msg.sensed_objects_map;
    }
    else {
      resolved.sensed_objects_map = []
    }

    return resolved;
    }
};

module.exports = SensorState;
