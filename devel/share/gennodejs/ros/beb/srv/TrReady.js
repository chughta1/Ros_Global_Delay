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

class TrReadyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.askTrain = null;
    }
    else {
      if (initObj.hasOwnProperty('askTrain')) {
        this.askTrain = initObj.askTrain
      }
      else {
        this.askTrain = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrReadyRequest
    // Serialize message field [askTrain]
    bufferOffset = _serializer.bool(obj.askTrain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrReadyRequest
    let len;
    let data = new TrReadyRequest(null);
    // Deserialize message field [askTrain]
    data.askTrain = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/TrReadyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26ea6ef590e69bef1ed5de7abe99aef0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool askTrain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrReadyRequest(null);
    if (msg.askTrain !== undefined) {
      resolved.askTrain = msg.askTrain;
    }
    else {
      resolved.askTrain = false
    }

    return resolved;
    }
};

class TrReadyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resTrain = null;
    }
    else {
      if (initObj.hasOwnProperty('resTrain')) {
        this.resTrain = initObj.resTrain
      }
      else {
        this.resTrain = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrReadyResponse
    // Serialize message field [resTrain]
    bufferOffset = _serializer.bool(obj.resTrain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrReadyResponse
    let len;
    let data = new TrReadyResponse(null);
    // Deserialize message field [resTrain]
    data.resTrain = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/TrReadyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75e0701c498f543f4afab6d19f049f1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resTrain
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrReadyResponse(null);
    if (msg.resTrain !== undefined) {
      resolved.resTrain = msg.resTrain;
    }
    else {
      resolved.resTrain = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TrReadyRequest,
  Response: TrReadyResponse,
  md5sum() { return '48dfce180ae15a999c8da093ded5649e'; },
  datatype() { return 'beb/TrReady'; }
};
