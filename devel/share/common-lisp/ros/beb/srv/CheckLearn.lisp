; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude CheckLearn-request.msg.html

(cl:defclass <CheckLearn-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckLearn-request (<CheckLearn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckLearn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckLearn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<CheckLearn-request> is deprecated: use beb-srv:CheckLearn-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckLearn-request>) ostream)
  "Serializes a message object of type '<CheckLearn-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckLearn-request>) istream)
  "Deserializes a message object of type '<CheckLearn-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckLearn-request>)))
  "Returns string type for a service object of type '<CheckLearn-request>"
  "beb/CheckLearnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckLearn-request)))
  "Returns string type for a service object of type 'CheckLearn-request"
  "beb/CheckLearnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckLearn-request>)))
  "Returns md5sum for a message object of type '<CheckLearn-request>"
  "628b9d6a3c360f58582c93f2715ade47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckLearn-request)))
  "Returns md5sum for a message object of type 'CheckLearn-request"
  "628b9d6a3c360f58582c93f2715ade47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckLearn-request>)))
  "Returns full string definition for message of type '<CheckLearn-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckLearn-request)))
  "Returns full string definition for message of type 'CheckLearn-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckLearn-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckLearn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckLearn-request
))
;//! \htmlinclude CheckLearn-response.msg.html

(cl:defclass <CheckLearn-response> (roslisp-msg-protocol:ros-message)
  ((LearnConf
    :reader LearnConf
    :initarg :LearnConf
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckLearn-response (<CheckLearn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckLearn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckLearn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<CheckLearn-response> is deprecated: use beb-srv:CheckLearn-response instead.")))

(cl:ensure-generic-function 'LearnConf-val :lambda-list '(m))
(cl:defmethod LearnConf-val ((m <CheckLearn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:LearnConf-val is deprecated.  Use beb-srv:LearnConf instead.")
  (LearnConf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckLearn-response>) ostream)
  "Serializes a message object of type '<CheckLearn-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LearnConf) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckLearn-response>) istream)
  "Deserializes a message object of type '<CheckLearn-response>"
    (cl:setf (cl:slot-value msg 'LearnConf) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckLearn-response>)))
  "Returns string type for a service object of type '<CheckLearn-response>"
  "beb/CheckLearnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckLearn-response)))
  "Returns string type for a service object of type 'CheckLearn-response"
  "beb/CheckLearnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckLearn-response>)))
  "Returns md5sum for a message object of type '<CheckLearn-response>"
  "628b9d6a3c360f58582c93f2715ade47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckLearn-response)))
  "Returns md5sum for a message object of type 'CheckLearn-response"
  "628b9d6a3c360f58582c93f2715ade47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckLearn-response>)))
  "Returns full string definition for message of type '<CheckLearn-response>"
  (cl:format cl:nil "bool LearnConf~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckLearn-response)))
  "Returns full string definition for message of type 'CheckLearn-response"
  (cl:format cl:nil "bool LearnConf~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckLearn-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckLearn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckLearn-response
    (cl:cons ':LearnConf (LearnConf msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckLearn)))
  'CheckLearn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckLearn)))
  'CheckLearn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckLearn)))
  "Returns string type for a service object of type '<CheckLearn>"
  "beb/CheckLearn")