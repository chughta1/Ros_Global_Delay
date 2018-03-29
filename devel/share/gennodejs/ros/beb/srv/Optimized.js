// Auto-generated. Do not edit!

// (in-package beb.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class OptimizedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ask = null;
    }
    else {
      if (initObj.hasOwnProperty('ask')) {
        this.ask = initObj.ask
      }
      else {
        this.ask = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizedRequest
    // Serialize message field [ask]
    bufferOffset = _serializer.bool(obj.ask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizedRequest
    let len;
    let data = new OptimizedRequest(null);
    // Deserialize message field [ask]
    data.ask = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/OptimizedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbe9700edfca44c5eefb040d9b60f6d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizedRequest(null);
    if (msg.ask !== undefined) {
      resolved.ask = msg.ask;
    }
    else {
      resolved.ask = false
    }

    return resolved;
    }
};

class OptimizedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OptimizedResponse
    // Serialize message field [done]
    bufferOffset = _arraySerializer.float64(obj.done, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OptimizedResponse
    let len;
    let data = new OptimizedResponse(null);
    // Deserialize message field [done]
    data.done = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.done.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/OptimizedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ae084f9e534cf834d7209a96377246b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] done
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OptimizedResponse(null);
    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = []
    }

    return resolved;
    }
};

module.exports = {
  Request: OptimizedRequest,
  Response: OptimizedResponse,
  md5sum() { return '44cbd9eed0dcaf0a9959d08fbba67dd6'; },
  datatype() { return 'beb/Optimized'; }
};
