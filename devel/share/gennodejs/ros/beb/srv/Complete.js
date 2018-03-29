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

class CompleteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.check = null;
    }
    else {
      if (initObj.hasOwnProperty('check')) {
        this.check = initObj.check
      }
      else {
        this.check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompleteRequest
    // Serialize message field [check]
    bufferOffset = _serializer.bool(obj.check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompleteRequest
    let len;
    let data = new CompleteRequest(null);
    // Deserialize message field [check]
    data.check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/CompleteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5df00fea9d1f39520fa0345cbde1b26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CompleteRequest(null);
    if (msg.check !== undefined) {
      resolved.check = msg.check;
    }
    else {
      resolved.check = false
    }

    return resolved;
    }
};

class CompleteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.complete = null;
    }
    else {
      if (initObj.hasOwnProperty('complete')) {
        this.complete = initObj.complete
      }
      else {
        this.complete = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompleteResponse
    // Serialize message field [complete]
    bufferOffset = _serializer.bool(obj.complete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompleteResponse
    let len;
    let data = new CompleteResponse(null);
    // Deserialize message field [complete]
    data.complete = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/CompleteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d8061d2347621a6ed88451e28811cc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool complete
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CompleteResponse(null);
    if (msg.complete !== undefined) {
      resolved.complete = msg.complete;
    }
    else {
      resolved.complete = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CompleteRequest,
  Response: CompleteResponse,
  md5sum() { return '8b08a6f5f9673998ccc75228e00beb4f'; },
  datatype() { return 'beb/Complete'; }
};
