; Auto-generated. Do not edit!


(cl:in-package et_circumnavigation-srv)


;//! \htmlinclude Circum-request.msg.html

(cl:defclass <Circum-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Circum-request (<Circum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<Circum-request> is deprecated: use et_circumnavigation-srv:Circum-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circum-request>) ostream)
  "Serializes a message object of type '<Circum-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circum-request>) istream)
  "Deserializes a message object of type '<Circum-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circum-request>)))
  "Returns string type for a service object of type '<Circum-request>"
  "et_circumnavigation/CircumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circum-request)))
  "Returns string type for a service object of type 'Circum-request"
  "et_circumnavigation/CircumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circum-request>)))
  "Returns md5sum for a message object of type '<Circum-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circum-request)))
  "Returns md5sum for a message object of type 'Circum-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circum-request>)))
  "Returns full string definition for message of type '<Circum-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circum-request)))
  "Returns full string definition for message of type 'Circum-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circum-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Circum-request
))
;//! \htmlinclude Circum-response.msg.html

(cl:defclass <Circum-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Circum-response (<Circum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name et_circumnavigation-srv:<Circum-response> is deprecated: use et_circumnavigation-srv:Circum-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circum-response>) ostream)
  "Serializes a message object of type '<Circum-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circum-response>) istream)
  "Deserializes a message object of type '<Circum-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circum-response>)))
  "Returns string type for a service object of type '<Circum-response>"
  "et_circumnavigation/CircumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circum-response)))
  "Returns string type for a service object of type 'Circum-response"
  "et_circumnavigation/CircumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circum-response>)))
  "Returns md5sum for a message object of type '<Circum-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circum-response)))
  "Returns md5sum for a message object of type 'Circum-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circum-response>)))
  "Returns full string definition for message of type '<Circum-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circum-response)))
  "Returns full string definition for message of type 'Circum-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circum-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Circum-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Circum)))
  'Circum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Circum)))
  'Circum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circum)))
  "Returns string type for a service object of type '<Circum>"
  "et_circumnavigation/Circum")