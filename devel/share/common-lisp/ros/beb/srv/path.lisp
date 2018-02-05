; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude path-request.msg.html

(cl:defclass <path-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass path-request (<path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<path-request> is deprecated: use beb-srv:path-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:name-val is deprecated.  Use beb-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path-request>) ostream)
  "Serializes a message object of type '<path-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path-request>) istream)
  "Deserializes a message object of type '<path-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path-request>)))
  "Returns string type for a service object of type '<path-request>"
  "beb/pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path-request)))
  "Returns string type for a service object of type 'path-request"
  "beb/pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path-request>)))
  "Returns md5sum for a message object of type '<path-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path-request)))
  "Returns md5sum for a message object of type 'path-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path-request>)))
  "Returns full string definition for message of type '<path-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path-request)))
  "Returns full string definition for message of type 'path-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'path-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude path-response.msg.html

(cl:defclass <path-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass path-response (<path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<path-response> is deprecated: use beb-srv:path-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path-response>) ostream)
  "Serializes a message object of type '<path-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path-response>) istream)
  "Deserializes a message object of type '<path-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path-response>)))
  "Returns string type for a service object of type '<path-response>"
  "beb/pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path-response)))
  "Returns string type for a service object of type 'path-response"
  "beb/pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path-response>)))
  "Returns md5sum for a message object of type '<path-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path-response)))
  "Returns md5sum for a message object of type 'path-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path-response>)))
  "Returns full string definition for message of type '<path-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path-response)))
  "Returns full string definition for message of type 'path-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'path-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'path)))
  'path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'path)))
  'path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path)))
  "Returns string type for a service object of type '<path>"
  "beb/path")