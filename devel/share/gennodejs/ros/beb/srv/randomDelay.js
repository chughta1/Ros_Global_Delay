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

class randomDelayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.askDelay = null;
    }
    else {
      if (initObj.hasOwnProperty('askDelay')) {
        this.askDelay = initObj.askDelay
      }
      else {
        this.askDelay = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type randomDelayRequest
    // Serialize message field [askDelay]
    bufferOffset = _serializer.bool(obj.askDelay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type randomDelayRequest
    let len;
    let data = new randomDelayRequest(null);
    // Deserialize message field [askDelay]
    data.askDelay = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/randomDelayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b89d0d1cac0180724212fce5135c0ced';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool askDelay
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new randomDelayRequest(null);
    if (msg.askDelay !== undefined) {
      resolved.askDelay = msg.askDelay;
    }
    else {
      resolved.askDelay = false
    }

    return resolved;
    }
};

class randomDelayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sendDelay = null;
    }
    else {
      if (initObj.hasOwnProperty('sendDelay')) {
        this.sendDelay = initObj.sendDelay
      }
      else {
        this.sendDelay = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type randomDelayResponse
    // Serialize message field [sendDelay]
    bufferOffset = _serializer.float32(obj.sendDelay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type randomDelayResponse
    let len;
    let data = new randomDelayResponse(null);
    // Deserialize message field [sendDelay]
    data.sendDelay = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/randomDelayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1aafacb4fcc138a2dbf78672cae4038a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 sendDelay
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new randomDelayResponse(null);
    if (msg.sendDelay !== undefined) {
      resolved.sendDelay = msg.sendDelay;
    }
    else {
      resolved.sendDelay = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: randomDelayRequest,
  Response: randomDelayResponse,
  md5sum() { return '68d62eabb296c2a798f5e1a21d129e0d'; },
  datatype() { return 'beb/randomDelay'; }
};
