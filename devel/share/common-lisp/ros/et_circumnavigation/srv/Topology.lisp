; Auto-generated. Do not edit!


(cl:in-package et_circumnavigation-srv)


;//! \htmlinclude Topology-request.msg.html

(cl:defclass <Topology-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Topology-request (<Topology-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Topology-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Topology-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<Topology-request> is deprecated: use et_circumnavigation-srv:Topology-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Topology-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader et_circumnavigation-srv:name-val is deprecated.  Use et_circumnavigation-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Topology-request>) ostream)
  "Serializes a message object of type '<Topology-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Topology-request>) istream)
  "Deserializes a message object of type '<Topology-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Topology-request>)))
  "Returns string type for a service object of type '<Topology-request>"
  "et_circumnavigation/TopologyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topology-request)))
  "Returns string type for a service object of type 'Topology-request"
  "et_circumnavigation/TopologyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Topology-request>)))
  "Returns md5sum for a message object of type '<Topology-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Topology-request)))
  "Returns md5sum for a message object of type 'Topology-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Topology-request>)))
  "Returns full string definition for message of type '<Topology-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Topology-request)))
  "Returns full string definition for message of type 'Topology-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Topology-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Topology-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Topology-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Topology-response.msg.html

(cl:defclass <Topology-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Topology-response (<Topology-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Topology-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Topology-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<Topology-response> is deprecated: use et_circumnavigation-srv:Topology-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Topology-response>) ostream)
  "Serializes a message object of type '<Topology-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Topology-response>) istream)
  "Deserializes a message object of type '<Topology-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Topology-response>)))
  "Returns string type for a service object of type '<Topology-response>"
  "et_circumnavigation/TopologyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topology-response)))
  "Returns string type for a service object of type 'Topology-response"
  "et_circumnavigation/TopologyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Topology-response>)))
  "Returns md5sum for a message object of type '<Topology-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Topology-response)))
  "Returns md5sum for a message object of type 'Topology-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Topology-response>)))
  "Returns full string definition for message of type '<Topology-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Topology-response)))
  "Returns full string definition for message of type 'Topology-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Topology-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Topology-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Topology-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Topology)))
  'Topology-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Topology)))
  'Topology-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topology)))
  "Returns string type for a service object of type '<Topology>"
  "et_circumnavigation/Topology")