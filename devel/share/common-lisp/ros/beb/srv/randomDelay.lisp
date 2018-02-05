; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude randomDelay-request.msg.html

(cl:defclass <randomDelay-request> (roslisp-msg-protocol:ros-message)
  ((askDelay
    :reader askDelay
    :initarg :askDelay
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass randomDelay-request (<randomDelay-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <randomDelay-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'randomDelay-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<randomDelay-request> is deprecated: use beb-srv:randomDelay-request instead.")))

(cl:ensure-generic-function 'askDelay-val :lambda-list '(m))
(cl:defmethod askDelay-val ((m <randomDelay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:askDelay-val is deprecated.  Use beb-srv:askDelay instead.")
  (askDelay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <randomDelay-request>) ostream)
  "Serializes a message object of type '<randomDelay-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'askDelay) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <randomDelay-request>) istream)
  "Deserializes a message object of type '<randomDelay-request>"
    (cl:setf (cl:slot-value msg 'askDelay) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<randomDelay-request>)))
  "Returns string type for a service object of type '<randomDelay-request>"
  "beb/randomDelayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'randomDelay-request)))
  "Returns string type for a service object of type 'randomDelay-request"
  "beb/randomDelayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<randomDelay-request>)))
  "Returns md5sum for a message object of type '<randomDelay-request>"
  "68d62eabb296c2a798f5e1a21d129e0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'randomDelay-request)))
  "Returns md5sum for a message object of type 'randomDelay-request"
  "68d62eabb296c2a798f5e1a21d129e0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<randomDelay-request>)))
  "Returns full string definition for message of type '<randomDelay-request>"
  (cl:format cl:nil "bool askDelay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'randomDelay-request)))
  "Returns full string definition for message of type 'randomDelay-request"
  (cl:format cl:nil "bool askDelay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <randomDelay-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <randomDelay-request>))
  "Converts a ROS message object to a list"
  (cl:list 'randomDelay-request
    (cl:cons ':askDelay (askDelay msg))
))
;//! \htmlinclude randomDelay-response.msg.html

(cl:defclass <randomDelay-response> (roslisp-msg-protocol:ros-message)
  ((sendDelay
    :reader sendDelay
    :initarg :sendDelay
    :type cl:float
    :initform 0.0))
)

(cl:defclass randomDelay-response (<randomDelay-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <randomDelay-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'randomDelay-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<randomDelay-response> is deprecated: use beb-srv:randomDelay-response instead.")))

(cl:ensure-generic-function 'sendDelay-val :lambda-list '(m))
(cl:defmethod sendDelay-val ((m <randomDelay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:sendDelay-val is deprecated.  Use beb-srv:sendDelay instead.")
  (sendDelay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <randomDelay-response>) ostream)
  "Serializes a message object of type '<randomDelay-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sendDelay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <randomDelay-response>) istream)
  "Deserializes a message object of type '<randomDelay-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sendDelay) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<randomDelay-response>)))
  "Returns string type for a service object of type '<randomDelay-response>"
  "beb/randomDelayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'randomDelay-response)))
  "Returns string type for a service object of type 'randomDelay-response"
  "beb/randomDelayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<randomDelay-response>)))
  "Returns md5sum for a message object of type '<randomDelay-response>"
  "68d62eabb296c2a798f5e1a21d129e0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'randomDelay-response)))
  "Returns md5sum for a message object of type 'randomDelay-response"
  "68d62eabb296c2a798f5e1a21d129e0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<randomDelay-response>)))
  "Returns full string definition for message of type '<randomDelay-response>"
  (cl:format cl:nil "float32 sendDelay~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'randomDelay-response)))
  "Returns full string definition for message of type 'randomDelay-response"
  (cl:format cl:nil "float32 sendDelay~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <randomDelay-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <randomDelay-response>))
  "Converts a ROS message object to a list"
  (cl:list 'randomDelay-response
    (cl:cons ':sendDelay (sendDelay msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'randomDelay)))
  'randomDelay-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'randomDelay)))
  'randomDelay-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'randomDelay)))
  "Returns string type for a service object of type '<randomDelay>"
  "beb/randomDelay")