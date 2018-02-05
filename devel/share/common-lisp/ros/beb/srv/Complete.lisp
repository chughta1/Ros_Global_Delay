; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude Complete-request.msg.html

(cl:defclass <Complete-request> (roslisp-msg-protocol:ros-message)
  ((check
    :reader check
    :initarg :check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Complete-request (<Complete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Complete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Complete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Complete-request> is deprecated: use beb-srv:Complete-request instead.")))

(cl:ensure-generic-function 'check-val :lambda-list '(m))
(cl:defmethod check-val ((m <Complete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:check-val is deprecated.  Use beb-srv:check instead.")
  (check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Complete-request>) ostream)
  "Serializes a message object of type '<Complete-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Complete-request>) istream)
  "Deserializes a message object of type '<Complete-request>"
    (cl:setf (cl:slot-value msg 'check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Complete-request>)))
  "Returns string type for a service object of type '<Complete-request>"
  "beb/CompleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Complete-request)))
  "Returns string type for a service object of type 'Complete-request"
  "beb/CompleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Complete-request>)))
  "Returns md5sum for a message object of type '<Complete-request>"
  "8b08a6f5f9673998ccc75228e00beb4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Complete-request)))
  "Returns md5sum for a message object of type 'Complete-request"
  "8b08a6f5f9673998ccc75228e00beb4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Complete-request>)))
  "Returns full string definition for message of type '<Complete-request>"
  (cl:format cl:nil "bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Complete-request)))
  "Returns full string definition for message of type 'Complete-request"
  (cl:format cl:nil "bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Complete-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Complete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Complete-request
    (cl:cons ':check (check msg))
))
;//! \htmlinclude Complete-response.msg.html

(cl:defclass <Complete-response> (roslisp-msg-protocol:ros-message)
  ((complete
    :reader complete
    :initarg :complete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Complete-response (<Complete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Complete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Complete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Complete-response> is deprecated: use beb-srv:Complete-response instead.")))

(cl:ensure-generic-function 'complete-val :lambda-list '(m))
(cl:defmethod complete-val ((m <Complete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:complete-val is deprecated.  Use beb-srv:complete instead.")
  (complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Complete-response>) ostream)
  "Serializes a message object of type '<Complete-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'complete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Complete-response>) istream)
  "Deserializes a message object of type '<Complete-response>"
    (cl:setf (cl:slot-value msg 'complete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Complete-response>)))
  "Returns string type for a service object of type '<Complete-response>"
  "beb/CompleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Complete-response)))
  "Returns string type for a service object of type 'Complete-response"
  "beb/CompleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Complete-response>)))
  "Returns md5sum for a message object of type '<Complete-response>"
  "8b08a6f5f9673998ccc75228e00beb4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Complete-response)))
  "Returns md5sum for a message object of type 'Complete-response"
  "8b08a6f5f9673998ccc75228e00beb4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Complete-response>)))
  "Returns full string definition for message of type '<Complete-response>"
  (cl:format cl:nil "bool complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Complete-response)))
  "Returns full string definition for message of type 'Complete-response"
  (cl:format cl:nil "bool complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Complete-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Complete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Complete-response
    (cl:cons ':complete (complete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Complete)))
  'Complete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Complete)))
  'Complete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Complete)))
  "Returns string type for a service object of type '<Complete>"
  "beb/Complete")