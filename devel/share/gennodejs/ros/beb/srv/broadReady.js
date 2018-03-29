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

class broadReadyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.breadyask = null;
    }
    else {
      if (initObj.hasOwnProperty('breadyask')) {
        this.breadyask = initObj.breadyask
      }
      else {
        this.breadyask = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type broadReadyRequest
    // Serialize message field [breadyask]
    bufferOffset = _serializer.bool(obj.breadyask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type broadReadyRequest
    let len;
    let data = new broadReadyRequest(null);
    // Deserialize message field [breadyask]
    data.breadyask = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/broadReadyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc98afae0fe721b3d2a4fe251a0af5b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool breadyask
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new broadReadyRequest(null);
    if (msg.breadyask !== undefined) {
      resolved.breadyask = msg.breadyask;
    }
    else {
      resolved.breadyask = false
    }

    return resolved;
    }
};

class broadReadyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.breadyres = null;
    }
    else {
      if (initObj.hasOwnProperty('breadyres')) {
        this.breadyres = initObj.breadyres
      }
      else {
        this.breadyres = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type broadReadyResponse
    // Serialize message field [breadyres]
    bufferOffset = _serializer.bool(obj.breadyres, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type broadReadyResponse
    let len;
    let data = new broadReadyResponse(null);
    // Deserialize message field [breadyres]
    data.breadyres = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/broadReadyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '156b388dd2213d31d7c2fae4d877e9a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool breadyres
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new broadReadyResponse(null);
    if (msg.breadyres !== undefined) {
      resolved.breadyres = msg.breadyres;
    }
    else {
      resolved.breadyres = false
    }

    return resolved;
    }
};

module.exports = {
  Request: broadReadyRequest,
  Response: broadReadyResponse,
  md5sum() { return 'a7ac84f4d9ccfe63fababeef70137cb0'; },
  datatype() { return 'beb/broadReady'; }
};
