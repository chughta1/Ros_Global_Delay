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

class SendDelayLogicRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.askdb = null;
    }
    else {
      if (initObj.hasOwnProperty('askdb')) {
        this.askdb = initObj.askdb
      }
      else {
        this.askdb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendDelayLogicRequest
    // Serialize message field [askdb]
    bufferOffset = _serializer.bool(obj.askdb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendDelayLogicRequest
    let len;
    let data = new SendDelayLogicRequest(null);
    // Deserialize message field [askdb]
    data.askdb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/SendDelayLogicRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f1eb7492a4a0a560ddac2697fe18261';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool askdb
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendDelayLogicRequest(null);
    if (msg.askdb !== undefined) {
      resolved.askdb = msg.askdb;
    }
    else {
      resolved.askdb = false
    }

    return resolved;
    }
};

class SendDelayLogicResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.senddb = null;
    }
    else {
      if (initObj.hasOwnProperty('senddb')) {
        this.senddb = initObj.senddb
      }
      else {
        this.senddb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendDelayLogicResponse
    // Serialize message field [senddb]
    bufferOffset = _serializer.bool(obj.senddb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendDelayLogicResponse
    let len;
    let data = new SendDelayLogicResponse(null);
    // Deserialize message field [senddb]
    data.senddb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/SendDelayLogicResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e52faeaea82bd7603b003f2316da72c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool senddb
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendDelayLogicResponse(null);
    if (msg.senddb !== undefined) {
      resolved.senddb = msg.senddb;
    }
    else {
      resolved.senddb = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendDelayLogicRequest,
  Response: SendDelayLogicResponse,
  md5sum() { return '2b123fbf2a4603e168a3151939e3bbe7'; },
  datatype() { return 'beb/SendDelayLogic'; }
};
