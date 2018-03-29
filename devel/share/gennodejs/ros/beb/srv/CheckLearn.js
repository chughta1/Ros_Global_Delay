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

class CheckLearnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckLearnRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckLearnRequest
    let len;
    let data = new CheckLearnRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/CheckLearnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckLearnRequest(null);
    return resolved;
    }
};

class CheckLearnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LearnConf = null;
    }
    else {
      if (initObj.hasOwnProperty('LearnConf')) {
        this.LearnConf = initObj.LearnConf
      }
      else {
        this.LearnConf = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckLearnResponse
    // Serialize message field [LearnConf]
    bufferOffset = _serializer.bool(obj.LearnConf, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckLearnResponse
    let len;
    let data = new CheckLearnResponse(null);
    // Deserialize message field [LearnConf]
    data.LearnConf = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/CheckLearnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '628b9d6a3c360f58582c93f2715ade47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool LearnConf
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckLearnResponse(null);
    if (msg.LearnConf !== undefined) {
      resolved.LearnConf = msg.LearnConf;
    }
    else {
      resolved.LearnConf = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckLearnRequest,
  Response: CheckLearnResponse,
  md5sum() { return '628b9d6a3c360f58582c93f2715ade47'; },
  datatype() { return 'beb/CheckLearn'; }
};
