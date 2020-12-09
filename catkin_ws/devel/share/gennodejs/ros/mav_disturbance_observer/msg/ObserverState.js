// Auto-generated. Do not edit!

// (in-package mav_disturbance_observer.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObserverState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position = null;
      this.velocity = null;
      this.attitude = null;
      this.angular_velocity = null;
      this.external_forces = null;
      this.external_moments = null;
      this.forces_offset = null;
      this.moments_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('external_forces')) {
        this.external_forces = initObj.external_forces
      }
      else {
        this.external_forces = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('external_moments')) {
        this.external_moments = initObj.external_moments
      }
      else {
        this.external_moments = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('forces_offset')) {
        this.forces_offset = initObj.forces_offset
      }
      else {
        this.forces_offset = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('moments_offset')) {
        this.moments_offset = initObj.moments_offset
      }
      else {
        this.moments_offset = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObserverState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, 3);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 3) {
      throw new Error('Unable to serialize array field velocity - length must be 3')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, 3);
    // Check that the constant length array field [attitude] has the right length
    if (obj.attitude.length !== 3) {
      throw new Error('Unable to serialize array field attitude - length must be 3')
    }
    // Serialize message field [attitude]
    bufferOffset = _arraySerializer.float64(obj.attitude, buffer, bufferOffset, 3);
    // Check that the constant length array field [angular_velocity] has the right length
    if (obj.angular_velocity.length !== 3) {
      throw new Error('Unable to serialize array field angular_velocity - length must be 3')
    }
    // Serialize message field [angular_velocity]
    bufferOffset = _arraySerializer.float64(obj.angular_velocity, buffer, bufferOffset, 3);
    // Check that the constant length array field [external_forces] has the right length
    if (obj.external_forces.length !== 3) {
      throw new Error('Unable to serialize array field external_forces - length must be 3')
    }
    // Serialize message field [external_forces]
    bufferOffset = _arraySerializer.float64(obj.external_forces, buffer, bufferOffset, 3);
    // Check that the constant length array field [external_moments] has the right length
    if (obj.external_moments.length !== 3) {
      throw new Error('Unable to serialize array field external_moments - length must be 3')
    }
    // Serialize message field [external_moments]
    bufferOffset = _arraySerializer.float64(obj.external_moments, buffer, bufferOffset, 3);
    // Check that the constant length array field [forces_offset] has the right length
    if (obj.forces_offset.length !== 3) {
      throw new Error('Unable to serialize array field forces_offset - length must be 3')
    }
    // Serialize message field [forces_offset]
    bufferOffset = _arraySerializer.float64(obj.forces_offset, buffer, bufferOffset, 3);
    // Check that the constant length array field [moments_offset] has the right length
    if (obj.moments_offset.length !== 3) {
      throw new Error('Unable to serialize array field moments_offset - length must be 3')
    }
    // Serialize message field [moments_offset]
    bufferOffset = _arraySerializer.float64(obj.moments_offset, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObserverState
    let len;
    let data = new ObserverState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [attitude]
    data.attitude = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [external_forces]
    data.external_forces = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [external_moments]
    data.external_moments = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [forces_offset]
    data.forces_offset = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [moments_offset]
    data.moments_offset = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 192;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mav_disturbance_observer/ObserverState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ea414391f3791b95995d410be8fb3ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[3] position
    float64[3] velocity
    float64[3] attitude
    float64[3] angular_velocity
    float64[3] external_forces
    float64[3] external_moments
    float64[3] forces_offset
    float64[3] moments_offset
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObserverState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(3).fill(0)
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = msg.attitude;
    }
    else {
      resolved.attitude = new Array(3).fill(0)
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = new Array(3).fill(0)
    }

    if (msg.external_forces !== undefined) {
      resolved.external_forces = msg.external_forces;
    }
    else {
      resolved.external_forces = new Array(3).fill(0)
    }

    if (msg.external_moments !== undefined) {
      resolved.external_moments = msg.external_moments;
    }
    else {
      resolved.external_moments = new Array(3).fill(0)
    }

    if (msg.forces_offset !== undefined) {
      resolved.forces_offset = msg.forces_offset;
    }
    else {
      resolved.forces_offset = new Array(3).fill(0)
    }

    if (msg.moments_offset !== undefined) {
      resolved.moments_offset = msg.moments_offset;
    }
    else {
      resolved.moments_offset = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = ObserverState;
