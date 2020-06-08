// Auto-generated. Do not edit!

// (in-package add_markers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class marker_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.show_marker = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('show_marker')) {
        this.show_marker = initObj.show_marker
      }
      else {
        this.show_marker = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type marker_serviceRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [show_marker]
    bufferOffset = _serializer.bool(obj.show_marker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type marker_serviceRequest
    let len;
    let data = new marker_serviceRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [show_marker]
    data.show_marker = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/marker_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5c26925aaf6433a71a5dab8f87a83b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    bool show_marker
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new marker_serviceRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.show_marker !== undefined) {
      resolved.show_marker = msg.show_marker;
    }
    else {
      resolved.show_marker = false
    }

    return resolved;
    }
};

class marker_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.marker_updated = null;
    }
    else {
      if (initObj.hasOwnProperty('marker_updated')) {
        this.marker_updated = initObj.marker_updated
      }
      else {
        this.marker_updated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type marker_serviceResponse
    // Serialize message field [marker_updated]
    bufferOffset = _serializer.bool(obj.marker_updated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type marker_serviceResponse
    let len;
    let data = new marker_serviceResponse(null);
    // Deserialize message field [marker_updated]
    data.marker_updated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/marker_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca8098ed83e8add35e0051a9937647c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool marker_updated
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new marker_serviceResponse(null);
    if (msg.marker_updated !== undefined) {
      resolved.marker_updated = msg.marker_updated;
    }
    else {
      resolved.marker_updated = false
    }

    return resolved;
    }
};

module.exports = {
  Request: marker_serviceRequest,
  Response: marker_serviceResponse,
  md5sum() { return 'e5cce09bb285d3db26a9c9e57cf16f60'; },
  datatype() { return 'add_markers/marker_service'; }
};
