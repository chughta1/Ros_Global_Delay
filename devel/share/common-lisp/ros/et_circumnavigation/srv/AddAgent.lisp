; Auto-generated. Do not edit!


(cl:in-package et_circumnavigation-srv)


;//! \htmlinclude AddAgent-request.msg.html

(cl:defclass <AddAgent-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass AddAgent-request (<AddAgent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddAgent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddAgent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<AddAgent-request> is deprecated: use et_circumnavigation-srv:AddAgent-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddAgent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader et_circumnavigation-srv:name-val is deprecated.  Use et_circumnavigation-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddAgent-request>) ostream)
  "Serializes a message object of type '<AddAgent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddAgent-request>) istream)
  "Deserializes a message object of type '<AddAgent-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddAgent-request>)))
  "Returns string type for a service object of type '<AddAgent-request>"
  "et_circumnavigation/AddAgentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddAgent-request)))
  "Returns string type for a service object of type 'AddAgent-request"
  "et_circumnavigation/AddAgentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddAgent-request>)))
  "Returns md5sum for a message object of type '<AddAgent-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddAgent-request)))
  "Returns md5sum for a message object of type 'AddAgent-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddAgent-request>)))
  "Returns full string definition for message of type '<AddAgent-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddAgent-request)))
  "Returns full string definition for message of type 'AddAgent-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddAgent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddAgent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddAgent-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude AddAgent-response.msg.html

(cl:defclass <AddAgent-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddAgent-response (<AddAgent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddAgent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddAgent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<AddAgent-response> is deprecated: use et_circumnavigation-srv:AddAgent-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddAgent-response>) ostream)
  "Serializes a message object of type '<AddAgent-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddAgent-response>) istream)
  "Deserializes a message object of type '<AddAgent-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddAgent-response>)))
  "Returns string type for a service object of type '<AddAgent-response>"
  "et_circumnavigation/AddAgentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddAgent-response)))
  "Returns string type for a service object of type 'AddAgent-response"
  "et_circumnavigation/AddAgentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddAgent-response>)))
  "Returns md5sum for a message object of type '<AddAgent-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddAgent-response)))
  "Returns md5sum for a message object of type 'AddAgent-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddAgent-response>)))
  "Returns full string definition for message of type '<AddAgent-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddAgent-response)))
  "Returns full string definition for message of type 'AddAgent-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddAgent-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddAgent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddAgent-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddAgent)))
  'AddAgent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddAgent)))
  'AddAgent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddAgent)))
  "Returns string type for a service object of type '<AddAgent>"
  "et_circumnavigation/AddAgent")