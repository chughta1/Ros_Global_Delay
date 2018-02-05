; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude Estimate-request.msg.html

(cl:defclass <Estimate-request> (roslisp-msg-protocol:ros-message)
  ((askEstimate
    :reader askEstimate
    :initarg :askEstimate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Estimate-request (<Estimate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Estimate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Estimate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Estimate-request> is deprecated: use beb-srv:Estimate-request instead.")))

(cl:ensure-generic-function 'askEstimate-val :lambda-list '(m))
(cl:defmethod askEstimate-val ((m <Estimate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:askEstimate-val is deprecated.  Use beb-srv:askEstimate instead.")
  (askEstimate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Estimate-request>) ostream)
  "Serializes a message object of type '<Estimate-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'askEstimate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Estimate-request>) istream)
  "Deserializes a message object of type '<Estimate-request>"
    (cl:setf (cl:slot-value msg 'askEstimate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Estimate-request>)))
  "Returns string type for a service object of type '<Estimate-request>"
  "beb/EstimateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Estimate-request)))
  "Returns string type for a service object of type 'Estimate-request"
  "beb/EstimateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Estimate-request>)))
  "Returns md5sum for a message object of type '<Estimate-request>"
  "8f3e47450b5620c15f2f584c2ee92cf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Estimate-request)))
  "Returns md5sum for a message object of type 'Estimate-request"
  "8f3e47450b5620c15f2f584c2ee92cf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Estimate-request>)))
  "Returns full string definition for message of type '<Estimate-request>"
  (cl:format cl:nil "bool askEstimate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Estimate-request)))
  "Returns full string definition for message of type 'Estimate-request"
  (cl:format cl:nil "bool askEstimate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Estimate-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Estimate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Estimate-request
    (cl:cons ':askEstimate (askEstimate msg))
))
;//! \htmlinclude Estimate-response.msg.html

(cl:defclass <Estimate-response> (roslisp-msg-protocol:ros-message)
  ((Est
    :reader Est
    :initarg :Est
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Estimate-response (<Estimate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Estimate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Estimate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Estimate-response> is deprecated: use beb-srv:Estimate-response instead.")))

(cl:ensure-generic-function 'Est-val :lambda-list '(m))
(cl:defmethod Est-val ((m <Estimate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:Est-val is deprecated.  Use beb-srv:Est instead.")
  (Est m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Estimate-response>) ostream)
  "Serializes a message object of type '<Estimate-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Est) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Estimate-response>) istream)
  "Deserializes a message object of type '<Estimate-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Est) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Estimate-response>)))
  "Returns string type for a service object of type '<Estimate-response>"
  "beb/EstimateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Estimate-response)))
  "Returns string type for a service object of type 'Estimate-response"
  "beb/EstimateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Estimate-response>)))
  "Returns md5sum for a message object of type '<Estimate-response>"
  "8f3e47450b5620c15f2f584c2ee92cf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Estimate-response)))
  "Returns md5sum for a message object of type 'Estimate-response"
  "8f3e47450b5620c15f2f584c2ee92cf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Estimate-response>)))
  "Returns full string definition for message of type '<Estimate-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 Est~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Estimate-response)))
  "Returns full string definition for message of type 'Estimate-response"
  (cl:format cl:nil "geometry_msgs/Vector3 Est~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Estimate-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Est))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Estimate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Estimate-response
    (cl:cons ':Est (Est msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Estimate)))
  'Estimate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Estimate)))
  'Estimate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Estimate)))
  "Returns string type for a service object of type '<Estimate>"
  "beb/Estimate")