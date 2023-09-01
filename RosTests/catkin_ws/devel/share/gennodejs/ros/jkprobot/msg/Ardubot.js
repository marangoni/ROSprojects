// Auto-generated. Do not edit!

// (in-package jkprobot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Ardubot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_deg = null;
      this.waist_deg = null;
      this.shoulder_deg = null;
      this.wrist_deg = null;
      this.grip_deg = null;
    }
    else {
      if (initObj.hasOwnProperty('base_deg')) {
        this.base_deg = initObj.base_deg
      }
      else {
        this.base_deg = 0;
      }
      if (initObj.hasOwnProperty('waist_deg')) {
        this.waist_deg = initObj.waist_deg
      }
      else {
        this.waist_deg = 0;
      }
      if (initObj.hasOwnProperty('shoulder_deg')) {
        this.shoulder_deg = initObj.shoulder_deg
      }
      else {
        this.shoulder_deg = 0;
      }
      if (initObj.hasOwnProperty('wrist_deg')) {
        this.wrist_deg = initObj.wrist_deg
      }
      else {
        this.wrist_deg = 0;
      }
      if (initObj.hasOwnProperty('grip_deg')) {
        this.grip_deg = initObj.grip_deg
      }
      else {
        this.grip_deg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ardubot
    // Serialize message field [base_deg]
    bufferOffset = _serializer.int32(obj.base_deg, buffer, bufferOffset);
    // Serialize message field [waist_deg]
    bufferOffset = _serializer.int32(obj.waist_deg, buffer, bufferOffset);
    // Serialize message field [shoulder_deg]
    bufferOffset = _serializer.int32(obj.shoulder_deg, buffer, bufferOffset);
    // Serialize message field [wrist_deg]
    bufferOffset = _serializer.int32(obj.wrist_deg, buffer, bufferOffset);
    // Serialize message field [grip_deg]
    bufferOffset = _serializer.int32(obj.grip_deg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ardubot
    let len;
    let data = new Ardubot(null);
    // Deserialize message field [base_deg]
    data.base_deg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [waist_deg]
    data.waist_deg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shoulder_deg]
    data.shoulder_deg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wrist_deg]
    data.wrist_deg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [grip_deg]
    data.grip_deg = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jkprobot/Ardubot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '416e94e338a7777f87f98090399f3e9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 base_deg
    int32 waist_deg
    int32 shoulder_deg
    int32 wrist_deg
    int32 grip_deg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ardubot(null);
    if (msg.base_deg !== undefined) {
      resolved.base_deg = msg.base_deg;
    }
    else {
      resolved.base_deg = 0
    }

    if (msg.waist_deg !== undefined) {
      resolved.waist_deg = msg.waist_deg;
    }
    else {
      resolved.waist_deg = 0
    }

    if (msg.shoulder_deg !== undefined) {
      resolved.shoulder_deg = msg.shoulder_deg;
    }
    else {
      resolved.shoulder_deg = 0
    }

    if (msg.wrist_deg !== undefined) {
      resolved.wrist_deg = msg.wrist_deg;
    }
    else {
      resolved.wrist_deg = 0
    }

    if (msg.grip_deg !== undefined) {
      resolved.grip_deg = msg.grip_deg;
    }
    else {
      resolved.grip_deg = 0
    }

    return resolved;
    }
};

module.exports = Ardubot;
