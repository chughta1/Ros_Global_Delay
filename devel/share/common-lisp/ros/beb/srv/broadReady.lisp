; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude broadReady-request.msg.html

(cl:defclass <broadReady-request> (roslisp-msg-protocol:ros-message)
  ((breadyask
    :reader breadyask
    :initarg :breadyask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass broadReady-request (<broadReady-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <broadReady-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'broadReady-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<broadReady-request> is deprecated: use beb-srv:broadReady-request instead.")))

(cl:ensure-generic-function 'breadyask-val :lambda-list '(m))
(cl:defmethod breadyask-val ((m <broadReady-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:breadyask-val is deprecated.  Use beb-srv:breadyask instead.")
  (breadyask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <broadReady-request>) ostream)
  "Serializes a message object of type '<broadReady-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'breadyask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <broadReady-request>) istream)
  "Deserializes a message object of type '<broadReady-request>"
    (cl:setf (cl:slot-value msg 'breadyask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<broadReady-request>)))
  "Returns string type for a service object of type '<broadReady-request>"
  "beb/broadReadyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'broadReady-request)))
  "Returns string type for a service object of type 'broadReady-request"
  "beb/broadReadyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<broadReady-request>)))
  "Returns md5sum for a message object of type '<broadReady-request>"
  "a7ac84f4d9ccfe63fababeef70137cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'broadReady-request)))
  "Returns md5sum for a message object of type 'broadReady-request"
  "a7ac84f4d9ccfe63fababeef70137cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<broadReady-request>)))
  "Returns full string definition for message of type '<broadReady-request>"
  (cl:format cl:nil "bool breadyask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'broadReady-request)))
  "Returns full string definition for message of type 'broadReady-request"
  (cl:format cl:nil "bool breadyask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <broadReady-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <broadReady-request>))
  "Converts a ROS message object to a list"
  (cl:list 'broadReady-request
    (cl:cons ':breadyask (breadyask msg))
))
;//! \htmlinclude broadReady-response.msg.html

(cl:defclass <broadReady-response> (roslisp-msg-protocol:ros-message)
  ((breadyres
    :reader breadyres
    :initarg :breadyres
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass broadReady-response (<broadReady-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <broadReady-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'broadReady-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<broadReady-response> is deprecated: use beb-srv:broadReady-response instead.")))

(cl:ensure-generic-function 'breadyres-val :lambda-list '(m))
(cl:defmethod breadyres-val ((m <broadReady-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:breadyres-val is deprecated.  Use beb-srv:breadyres instead.")
  (breadyres m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <broadReady-response>) ostream)
  "Serializes a message object of type '<broadReady-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'breadyres) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <broadReady-response>) istream)
  "Deserializes a message object of type '<broadReady-response>"
    (cl:setf (cl:slot-value msg 'breadyres) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<broadReady-response>)))
  "Returns string type for a service object of type '<broadReady-response>"
  "beb/broadReadyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'broadReady-response)))
  "Returns string type for a service object of type 'broadReady-response"
  "beb/broadReadyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<broadReady-response>)))
  "Returns md5sum for a message object of type '<broadReady-response>"
  "a7ac84f4d9ccfe63fababeef70137cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'broadReady-response)))
  "Returns md5sum for a message object of type 'broadReady-response"
  "a7ac84f4d9ccfe63fababeef70137cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<broadReady-response>)))
  "Returns full string definition for message of type '<broadReady-response>"
  (cl:format cl:nil "bool breadyres~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'broadReady-response)))
  "Returns full string definition for message of type 'broadReady-response"
  (cl:format cl:nil "bool breadyres~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <broadReady-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <broadReady-response>))
  "Converts a ROS message object to a list"
  (cl:list 'broadReady-response
    (cl:cons ':breadyres (breadyres msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'broadReady)))
  'broadReady-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'broadReady)))
  'broadReady-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'broadReady)))
  "Returns string type for a service object of type '<broadReady>"
  "beb/broadReady")