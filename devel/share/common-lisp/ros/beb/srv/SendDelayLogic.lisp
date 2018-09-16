; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude SendDelayLogic-request.msg.html

(cl:defclass <SendDelayLogic-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendDelayLogic-request (<SendDelayLogic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDelayLogic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDelayLogic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<SendDelayLogic-request> is deprecated: use beb-srv:SendDelayLogic-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDelayLogic-request>) ostream)
  "Serializes a message object of type '<SendDelayLogic-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDelayLogic-request>) istream)
  "Deserializes a message object of type '<SendDelayLogic-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDelayLogic-request>)))
  "Returns string type for a service object of type '<SendDelayLogic-request>"
  "beb/SendDelayLogicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDelayLogic-request)))
  "Returns string type for a service object of type 'SendDelayLogic-request"
  "beb/SendDelayLogicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDelayLogic-request>)))
  "Returns md5sum for a message object of type '<SendDelayLogic-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDelayLogic-request)))
  "Returns md5sum for a message object of type 'SendDelayLogic-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDelayLogic-request>)))
  "Returns full string definition for message of type '<SendDelayLogic-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDelayLogic-request)))
  "Returns full string definition for message of type 'SendDelayLogic-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDelayLogic-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDelayLogic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDelayLogic-request
))
;//! \htmlinclude SendDelayLogic-response.msg.html

(cl:defclass <SendDelayLogic-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SendDelayLogic-response (<SendDelayLogic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDelayLogic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDelayLogic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<SendDelayLogic-response> is deprecated: use beb-srv:SendDelayLogic-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDelayLogic-response>) ostream)
  "Serializes a message object of type '<SendDelayLogic-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDelayLogic-response>) istream)
  "Deserializes a message object of type '<SendDelayLogic-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendDelayLogic-response>)))
  "Returns string type for a service object of type '<SendDelayLogic-response>"
  "beb/SendDelayLogicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDelayLogic-response)))
  "Returns string type for a service object of type 'SendDelayLogic-response"
  "beb/SendDelayLogicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendDelayLogic-response>)))
  "Returns md5sum for a message object of type '<SendDelayLogic-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDelayLogic-response)))
  "Returns md5sum for a message object of type 'SendDelayLogic-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDelayLogic-response>)))
  "Returns full string definition for message of type '<SendDelayLogic-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDelayLogic-response)))
  "Returns full string definition for message of type 'SendDelayLogic-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDelayLogic-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDelayLogic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDelayLogic-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendDelayLogic)))
  'SendDelayLogic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendDelayLogic)))
  'SendDelayLogic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDelayLogic)))
  "Returns string type for a service object of type '<SendDelayLogic>"
  "beb/SendDelayLogic")