; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude TrReady-request.msg.html

(cl:defclass <TrReady-request> (roslisp-msg-protocol:ros-message)
  ((askTrain
    :reader askTrain
    :initarg :askTrain
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrReady-request (<TrReady-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrReady-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrReady-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<TrReady-request> is deprecated: use beb-srv:TrReady-request instead.")))

(cl:ensure-generic-function 'askTrain-val :lambda-list '(m))
(cl:defmethod askTrain-val ((m <TrReady-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:askTrain-val is deprecated.  Use beb-srv:askTrain instead.")
  (askTrain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrReady-request>) ostream)
  "Serializes a message object of type '<TrReady-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'askTrain) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrReady-request>) istream)
  "Deserializes a message object of type '<TrReady-request>"
    (cl:setf (cl:slot-value msg 'askTrain) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrReady-request>)))
  "Returns string type for a service object of type '<TrReady-request>"
  "beb/TrReadyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrReady-request)))
  "Returns string type for a service object of type 'TrReady-request"
  "beb/TrReadyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrReady-request>)))
  "Returns md5sum for a message object of type '<TrReady-request>"
  "48dfce180ae15a999c8da093ded5649e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrReady-request)))
  "Returns md5sum for a message object of type 'TrReady-request"
  "48dfce180ae15a999c8da093ded5649e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrReady-request>)))
  "Returns full string definition for message of type '<TrReady-request>"
  (cl:format cl:nil "bool askTrain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrReady-request)))
  "Returns full string definition for message of type 'TrReady-request"
  (cl:format cl:nil "bool askTrain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrReady-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrReady-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrReady-request
    (cl:cons ':askTrain (askTrain msg))
))
;//! \htmlinclude TrReady-response.msg.html

(cl:defclass <TrReady-response> (roslisp-msg-protocol:ros-message)
  ((resTrain
    :reader resTrain
    :initarg :resTrain
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrReady-response (<TrReady-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrReady-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrReady-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<TrReady-response> is deprecated: use beb-srv:TrReady-response instead.")))

(cl:ensure-generic-function 'resTrain-val :lambda-list '(m))
(cl:defmethod resTrain-val ((m <TrReady-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:resTrain-val is deprecated.  Use beb-srv:resTrain instead.")
  (resTrain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrReady-response>) ostream)
  "Serializes a message object of type '<TrReady-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resTrain) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrReady-response>) istream)
  "Deserializes a message object of type '<TrReady-response>"
    (cl:setf (cl:slot-value msg 'resTrain) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrReady-response>)))
  "Returns string type for a service object of type '<TrReady-response>"
  "beb/TrReadyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrReady-response)))
  "Returns string type for a service object of type 'TrReady-response"
  "beb/TrReadyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrReady-response>)))
  "Returns md5sum for a message object of type '<TrReady-response>"
  "48dfce180ae15a999c8da093ded5649e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrReady-response)))
  "Returns md5sum for a message object of type 'TrReady-response"
  "48dfce180ae15a999c8da093ded5649e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrReady-response>)))
  "Returns full string definition for message of type '<TrReady-response>"
  (cl:format cl:nil "bool resTrain~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrReady-response)))
  "Returns full string definition for message of type 'TrReady-response"
  (cl:format cl:nil "bool resTrain~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrReady-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrReady-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrReady-response
    (cl:cons ':resTrain (resTrain msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrReady)))
  'TrReady-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrReady)))
  'TrReady-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrReady)))
  "Returns string type for a service object of type '<TrReady>"
  "beb/TrReady")