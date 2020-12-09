// Auto-generated. Do not edit!

// (in-package waypoint_navigator.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoToHeightRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToHeightRequest
    // Serialize message field [height]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToHeightRequest
    let len;
    let data = new GoToHeightRequest(null);
    // Deserialize message field [height]
    data.height = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoint_navigator/GoToHeightRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1408bf479b7f0dca197fee4d8d8ed1d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Float64 height
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoToHeightRequest(null);
    if (msg.height !== undefined) {
      resolved.height = std_msgs.msg.Float64.Resolve(msg.height)
    }
    else {
      resolved.height = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

class GoToHeightResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoToHeightResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoToHeightResponse
    let len;
    let data = new GoToHeightResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'waypoint_navigator/GoToHeightResponse';
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
    const resolved = new GoToHeightResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GoToHeightRequest,
  Response: GoToHeightResponse,
  md5sum() { return '1408bf479b7f0dca197fee4d8d8ed1d0'; },
  datatype() { return 'waypoint_navigator/GoToHeight'; }
};
