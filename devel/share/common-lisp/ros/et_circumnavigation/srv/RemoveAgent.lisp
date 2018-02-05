; Auto-generated. Do not edit!


(cl:in-package et_circumnavigation-srv)


;//! \htmlinclude RemoveAgent-request.msg.html

(cl:defclass <RemoveAgent-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass RemoveAgent-request (<RemoveAgent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveAgent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveAgent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<RemoveAgent-request> is deprecated: use et_circumnavigation-srv:RemoveAgent-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RemoveAgent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader et_circumnavigation-srv:name-val is deprecated.  Use et_circumnavigation-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveAgent-request>) ostream)
  "Serializes a message object of type '<RemoveAgent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveAgent-request>) istream)
  "Deserializes a message object of type '<RemoveAgent-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveAgent-request>)))
  "Returns string type for a service object of type '<RemoveAgent-request>"
  "et_circumnavigation/RemoveAgentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveAgent-request)))
  "Returns string type for a service object of type 'RemoveAgent-request"
  "et_circumnavigation/RemoveAgentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveAgent-request>)))
  "Returns md5sum for a message object of type '<RemoveAgent-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveAgent-request)))
  "Returns md5sum for a message object of type 'RemoveAgent-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveAgent-request>)))
  "Returns full string definition for message of type '<RemoveAgent-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveAgent-request)))
  "Returns full string definition for message of type 'RemoveAgent-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveAgent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveAgent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveAgent-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude RemoveAgent-response.msg.html

(cl:defclass <RemoveAgent-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RemoveAgent-response (<RemoveAgent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveAgent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveAgent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<RemoveAgent-response> is deprecated: use et_circumnavigation-srv:RemoveAgent-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveAgent-response>) ostream)
  "Serializes a message object of type '<RemoveAgent-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveAgent-response>) istream)
  "Deserializes a message object of type '<RemoveAgent-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveAgent-response>)))
  "Returns string type for a service object of type '<RemoveAgent-response>"
  "et_circumnavigation/RemoveAgentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveAgent-response)))
  "Returns string type for a service object of type 'RemoveAgent-response"
  "et_circumnavigation/RemoveAgentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveAgent-response>)))
  "Returns md5sum for a message object of type '<RemoveAgent-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveAgent-response)))
  "Returns md5sum for a message object of type 'RemoveAgent-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveAgent-response>)))
  "Returns full string definition for message of type '<RemoveAgent-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveAgent-response)))
  "Returns full string definition for message of type 'RemoveAgent-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveAgent-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveAgent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveAgent-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveAgent)))
  'RemoveAgent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveAgent)))
  'RemoveAgent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveAgent)))
  "Returns string type for a service object of type '<RemoveAgent>"
  "et_circumnavigation/RemoveAgent")