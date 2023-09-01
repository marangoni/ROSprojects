; Auto-generated. Do not edit!


(cl:in-package jkprobot-msg)


;//! \htmlinclude Ardubot.msg.html

(cl:defclass <Ardubot> (roslisp-msg-protocol:ros-message)
  ((base_deg
    :reader base_deg
    :initarg :base_deg
    :type cl:integer
    :initform 0)
   (waist_deg
    :reader waist_deg
    :initarg :waist_deg
    :type cl:integer
    :initform 0)
   (shoulder_deg
    :reader shoulder_deg
    :initarg :shoulder_deg
    :type cl:integer
    :initform 0)
   (wrist_deg
    :reader wrist_deg
    :initarg :wrist_deg
    :type cl:integer
    :initform 0)
   (grip_deg
    :reader grip_deg
    :initarg :grip_deg
    :type cl:integer
    :initform 0))
)

(cl:defclass Ardubot (<Ardubot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardubot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardubot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jkprobot-msg:<Ardubot> is deprecated: use jkprobot-msg:Ardubot instead.")))

(cl:ensure-generic-function 'base_deg-val :lambda-list '(m))
(cl:defmethod base_deg-val ((m <Ardubot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jkprobot-msg:base_deg-val is deprecated.  Use jkprobot-msg:base_deg instead.")
  (base_deg m))

(cl:ensure-generic-function 'waist_deg-val :lambda-list '(m))
(cl:defmethod waist_deg-val ((m <Ardubot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jkprobot-msg:waist_deg-val is deprecated.  Use jkprobot-msg:waist_deg instead.")
  (waist_deg m))

(cl:ensure-generic-function 'shoulder_deg-val :lambda-list '(m))
(cl:defmethod shoulder_deg-val ((m <Ardubot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jkprobot-msg:shoulder_deg-val is deprecated.  Use jkprobot-msg:shoulder_deg instead.")
  (shoulder_deg m))

(cl:ensure-generic-function 'wrist_deg-val :lambda-list '(m))
(cl:defmethod wrist_deg-val ((m <Ardubot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jkprobot-msg:wrist_deg-val is deprecated.  Use jkprobot-msg:wrist_deg instead.")
  (wrist_deg m))

(cl:ensure-generic-function 'grip_deg-val :lambda-list '(m))
(cl:defmethod grip_deg-val ((m <Ardubot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jkprobot-msg:grip_deg-val is deprecated.  Use jkprobot-msg:grip_deg instead.")
  (grip_deg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardubot>) ostream)
  "Serializes a message object of type '<Ardubot>"
  (cl:let* ((signed (cl:slot-value msg 'base_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'waist_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'shoulder_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wrist_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'grip_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardubot>) istream)
  "Deserializes a message object of type '<Ardubot>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_deg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waist_deg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shoulder_deg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wrist_deg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grip_deg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardubot>)))
  "Returns string type for a message object of type '<Ardubot>"
  "jkprobot/Ardubot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardubot)))
  "Returns string type for a message object of type 'Ardubot"
  "jkprobot/Ardubot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardubot>)))
  "Returns md5sum for a message object of type '<Ardubot>"
  "416e94e338a7777f87f98090399f3e9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardubot)))
  "Returns md5sum for a message object of type 'Ardubot"
  "416e94e338a7777f87f98090399f3e9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardubot>)))
  "Returns full string definition for message of type '<Ardubot>"
  (cl:format cl:nil "int32 base_deg~%int32 waist_deg~%int32 shoulder_deg~%int32 wrist_deg~%int32 grip_deg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardubot)))
  "Returns full string definition for message of type 'Ardubot"
  (cl:format cl:nil "int32 base_deg~%int32 waist_deg~%int32 shoulder_deg~%int32 wrist_deg~%int32 grip_deg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardubot>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardubot>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardubot
    (cl:cons ':base_deg (base_deg msg))
    (cl:cons ':waist_deg (waist_deg msg))
    (cl:cons ':shoulder_deg (shoulder_deg msg))
    (cl:cons ':wrist_deg (wrist_deg msg))
    (cl:cons ':grip_deg (grip_deg msg))
))
