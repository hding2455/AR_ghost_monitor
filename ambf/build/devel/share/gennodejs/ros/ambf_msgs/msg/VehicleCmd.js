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

class VehicleCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.chassis_wrench = null;
      this.wheel_steering = null;
      this.wheel_power = null;
      this.wheel_brake = null;
      this.brake = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('chassis_wrench')) {
        this.chassis_wrench = initObj.chassis_wrench
      }
      else {
        this.chassis_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('wheel_steering')) {
        this.wheel_steering = initObj.wheel_steering
      }
      else {
        this.wheel_steering = [];
      }
      if (initObj.hasOwnProperty('wheel_power')) {
        this.wheel_power = initObj.wheel_power
      }
      else {
        this.wheel_power = [];
      }
      if (initObj.hasOwnProperty('wheel_brake')) {
        this.wheel_brake = initObj.wheel_brake
      }
      else {
        this.wheel_brake = [];
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [chassis_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.chassis_wrench, buffer, bufferOffset);
    // Serialize message field [wheel_steering]
    bufferOffset = _arraySerializer.float32(obj.wheel_steering, buffer, bufferOffset, null);
    // Serialize message field [wheel_power]
    bufferOffset = _arraySerializer.float32(obj.wheel_power, buffer, bufferOffset, null);
    // Serialize message field [wheel_brake]
    bufferOffset = _arraySerializer.float32(obj.wheel_brake, buffer, bufferOffset, null);
    // Serialize message field [brake]
    bufferOffset = _serializer.bool(obj.brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCmd
    let len;
    let data = new VehicleCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [chassis_wrench]
    data.chassis_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_steering]
    data.wheel_steering = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheel_power]
    data.wheel_power = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheel_brake]
    data.wheel_brake = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [brake]
    data.brake = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.wheel_steering.length;
    length += 4 * object.wheel_power.length;
    length += 4 * object.wheel_brake.length;
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ambf_msgs/VehicleCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20858f9fdd87217d00304616067bb7b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Wrench chassis_wrench
    float32[] wheel_steering
    float32[] wheel_power
    float32[] wheel_brake
    bool brake
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.chassis_wrench !== undefined) {
      resolved.chassis_wrench = geometry_msgs.msg.Wrench.Resolve(msg.chassis_wrench)
    }
    else {
      resolved.chassis_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.wheel_steering !== undefined) {
      resolved.wheel_steering = msg.wheel_steering;
    }
    else {
      resolved.wheel_steering = []
    }

    if (msg.wheel_power !== undefined) {
      resolved.wheel_power = msg.wheel_power;
    }
    else {
      resolved.wheel_power = []
    }

    if (msg.wheel_brake !== undefined) {
      resolved.wheel_brake = msg.wheel_brake;
    }
    else {
      resolved.wheel_brake = []
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = false
    }

    return resolved;
    }
};

module.exports = VehicleCmd;
