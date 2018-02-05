; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude land-request.msg.html

(cl:defclass <land-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass land-request (<land-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <land-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'land-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<land-request> is deprecated: use beb-srv:land-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <land-request>) ostream)
  "Serializes a message object of type '<land-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <land-request>) istream)
  "Deserializes a message object of type '<land-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<land-request>)))
  "Returns string type for a service object of type '<land-request>"
  "beb/landRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land-request)))
  "Returns string type for a service object of type 'land-request"
  "beb/landRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<land-request>)))
  "Returns md5sum for a message object of type '<land-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'land-request)))
  "Returns md5sum for a message object of type 'land-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<land-request>)))
  "Returns full string definition for message of type '<land-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'land-request)))
  "Returns full string definition for message of type 'land-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <land-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <land-request>))
  "Converts a ROS message object to a list"
  (cl:list 'land-request
))
;//! \htmlinclude land-response.msg.html

(cl:defclass <land-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass land-response (<land-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <land-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'land-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<land-response> is deprecated: use beb-srv:land-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <land-response>) ostream)
  "Serializes a message object of type '<land-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <land-response>) istream)
  "Deserializes a message object of type '<land-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<land-response>)))
  "Returns string type for a service object of type '<land-response>"
  "beb/landResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land-response)))
  "Returns string type for a service object of type 'land-response"
  "beb/landResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<land-response>)))
  "Returns md5sum for a message object of type '<land-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'land-response)))
  "Returns md5sum for a message object of type 'land-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<land-response>)))
  "Returns full string definition for message of type '<land-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'land-response)))
  "Returns full string definition for message of type 'land-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <land-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <land-response>))
  "Converts a ROS message object to a list"
  (cl:list 'land-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'land)))
  'land-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'land)))
  'land-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'land)))
  "Returns string type for a service object of type '<land>"
  "beb/land")