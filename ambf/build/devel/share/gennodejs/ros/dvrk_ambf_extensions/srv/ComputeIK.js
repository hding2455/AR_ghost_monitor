// Auto-generated. Do not edit!

// (in-package dvrk_ambf_extensions.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HomogenousTransform = require('../msg/HomogenousTransform.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ComputeIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.T_7_0 = null;
    }
    else {
      if (initObj.hasOwnProperty('T_7_0')) {
        this.T_7_0 = initObj.T_7_0
      }
      else {
        this.T_7_0 = new HomogenousTransform();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeIKRequest
    // Serialize message field [T_7_0]
    bufferOffset = HomogenousTransform.serialize(obj.T_7_0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeIKRequest
    let len;
    let data = new ComputeIKRequest(null);
    // Deserialize message field [T_7_0]
    data.T_7_0 = HomogenousTransform.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HomogenousTransform.getMessageSize(object.T_7_0);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dvrk_ambf_extensions/ComputeIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c605d7f6f5a670a05b329beed8dc779';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    HomogenousTransform T_7_0
    
    ================================================================================
    MSG: dvrk_ambf_extensions/HomogenousTransform
    float64[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeIKRequest(null);
    if (msg.T_7_0 !== undefined) {
      resolved.T_7_0 = HomogenousTransform.Resolve(msg.T_7_0)
    }
    else {
      resolved.T_7_0 = new HomogenousTransform()
    }

    return resolved;
    }
};

class ComputeIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q_des = null;
    }
    else {
      if (initObj.hasOwnProperty('q_des')) {
        this.q_des = initObj.q_des
      }
      else {
        this.q_des = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeIKResponse
    // Serialize message field [q_des]
    bufferOffset = _arraySerializer.float64(obj.q_des, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeIKResponse
    let len;
    let data = new ComputeIKResponse(null);
    // Deserialize message field [q_des]
    data.q_des = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.q_des.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dvrk_ambf_extensions/ComputeIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e6dc67c5213b4e50d3181f11f0bcb98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] q_des
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeIKResponse(null);
    if (msg.q_des !== undefined) {
      resolved.q_des = msg.q_des;
    }
    else {
      resolved.q_des = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputeIKRequest,
  Response: ComputeIKResponse,
  md5sum() { return '8e9b7fd149152a96b552a17e15f68358'; },
  datatype() { return 'dvrk_ambf_extensions/ComputeIK'; }
};
