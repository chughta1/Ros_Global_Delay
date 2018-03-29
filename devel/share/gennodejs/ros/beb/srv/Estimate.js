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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class EstimateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.askEstimate = null;
    }
    else {
      if (initObj.hasOwnProperty('askEstimate')) {
        this.askEstimate = initObj.askEstimate
      }
      else {
        this.askEstimate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimateRequest
    // Serialize message field [askEstimate]
    bufferOffset = _serializer.bool(obj.askEstimate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateRequest
    let len;
    let data = new EstimateRequest(null);
    // Deserialize message field [askEstimate]
    data.askEstimate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/EstimateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f3e04f95bcc311325cd43eeca0983f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool askEstimate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EstimateRequest(null);
    if (msg.askEstimate !== undefined) {
      resolved.askEstimate = msg.askEstimate;
    }
    else {
      resolved.askEstimate = false
    }

    return resolved;
    }
};

class EstimateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Est = null;
    }
    else {
      if (initObj.hasOwnProperty('Est')) {
        this.Est = initObj.Est
      }
      else {
        this.Est = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimateResponse
    // Serialize message field [Est]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.Est, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateResponse
    let len;
    let data = new EstimateResponse(null);
    // Deserialize message field [Est]
    data.Est = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beb/EstimateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e7571790b7810aa1510470e70dc8253';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 Est
    
    
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
    const resolved = new EstimateResponse(null);
    if (msg.Est !== undefined) {
      resolved.Est = geometry_msgs.msg.Vector3.Resolve(msg.Est)
    }
    else {
      resolved.Est = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = {
  Request: EstimateRequest,
  Response: EstimateResponse,
  md5sum() { return '8f3e47450b5620c15f2f584c2ee92cf6'; },
  datatype() { return 'beb/Estimate'; }
};
