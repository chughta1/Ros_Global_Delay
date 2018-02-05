; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude SendDelayLogic-request.msg.html

(cl:defclass <SendDelayLogic-request> (roslisp-msg-protocol:ros-message)
  ((askdb
    :reader askdb
    :initarg :askdb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendDelayLogic-request (<SendDelayLogic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDelayLogic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDelayLogic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<SendDelayLogic-request> is deprecated: use beb-srv:SendDelayLogic-request instead.")))

(cl:ensure-generic-function 'askdb-val :lambda-list '(m))
(cl:defmethod askdb-val ((m <SendDelayLogic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:askdb-val is deprecated.  Use beb-srv:askdb instead.")
  (askdb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDelayLogic-request>) ostream)
  "Serializes a message object of type '<SendDelayLogic-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'askdb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDelayLogic-request>) istream)
  "Deserializes a message object of type '<SendDelayLogic-request>"
    (cl:setf (cl:slot-value msg 'askdb) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "2b123fbf2a4603e168a3151939e3bbe7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDelayLogic-request)))
  "Returns md5sum for a message object of type 'SendDelayLogic-request"
  "2b123fbf2a4603e168a3151939e3bbe7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDelayLogic-request>)))
  "Returns full string definition for message of type '<SendDelayLogic-request>"
  (cl:format cl:nil "bool askdb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDelayLogic-request)))
  "Returns full string definition for message of type 'SendDelayLogic-request"
  (cl:format cl:nil "bool askdb~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDelayLogic-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDelayLogic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDelayLogic-request
    (cl:cons ':askdb (askdb msg))
))
;//! \htmlinclude SendDelayLogic-response.msg.html

(cl:defclass <SendDelayLogic-response> (roslisp-msg-protocol:ros-message)
  ((senddb
    :reader senddb
    :initarg :senddb
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendDelayLogic-response (<SendDelayLogic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendDelayLogic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendDelayLogic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<SendDelayLogic-response> is deprecated: use beb-srv:SendDelayLogic-response instead.")))

(cl:ensure-generic-function 'senddb-val :lambda-list '(m))
(cl:defmethod senddb-val ((m <SendDelayLogic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:senddb-val is deprecated.  Use beb-srv:senddb instead.")
  (senddb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendDelayLogic-response>) ostream)
  "Serializes a message object of type '<SendDelayLogic-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'senddb) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendDelayLogic-response>) istream)
  "Deserializes a message object of type '<SendDelayLogic-response>"
    (cl:setf (cl:slot-value msg 'senddb) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "2b123fbf2a4603e168a3151939e3bbe7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendDelayLogic-response)))
  "Returns md5sum for a message object of type 'SendDelayLogic-response"
  "2b123fbf2a4603e168a3151939e3bbe7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendDelayLogic-response>)))
  "Returns full string definition for message of type '<SendDelayLogic-response>"
  (cl:format cl:nil "bool senddb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendDelayLogic-response)))
  "Returns full string definition for message of type 'SendDelayLogic-response"
  (cl:format cl:nil "bool senddb~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendDelayLogic-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendDelayLogic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendDelayLogic-response
    (cl:cons ':senddb (senddb msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendDelayLogic)))
  'SendDelayLogic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendDelayLogic)))
  'SendDelayLogic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendDelayLogic)))
  "Returns string type for a service object of type '<SendDelayLogic>"
  "beb/SendDelayLogic")