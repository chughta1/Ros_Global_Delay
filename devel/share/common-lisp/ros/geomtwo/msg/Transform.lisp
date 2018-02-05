; Auto-generated. Do not edit!


(cl:in-package geomtwo-msg)


;//! \htmlinclude Transform.msg.html

(cl:defclass <Transform> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geomtwo-msg:Vector
    :initform (cl:make-instance 'geomtwo-msg:Vector))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geomtwo-msg:Versor
    :initform (cl:make-instance 'geomtwo-msg:Versor)))
)

(cl:defclass Transform (<Transform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geomtwo-msg:<Transform> is deprecated: use geomtwo-msg:Transform instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geomtwo-msg:translation-val is deprecated.  Use geomtwo-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Transform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geomtwo-msg:rotation-val is deprecated.  Use geomtwo-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transform>) ostream)
  "Serializes a message object of type '<Transform>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transform>) istream)
  "Deserializes a message object of type '<Transform>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transform>)))
  "Returns string type for a message object of type '<Transform>"
  "geomtwo/Transform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transform)))
  "Returns string type for a message object of type 'Transform"
  "geomtwo/Transform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transform>)))
  "Returns md5sum for a message object of type '<Transform>"
  "932b254785c4937fbabf36a74854ba5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transform)))
  "Returns md5sum for a message object of type 'Transform"
  "932b254785c4937fbabf36a74854ba5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transform>)))
  "Returns full string definition for message of type '<Transform>"
  (cl:format cl:nil "Vector translation~%Versor rotation~%~%================================================================================~%MSG: geomtwo/Vector~%float64 x~%float64 y~%~%================================================================================~%MSG: geomtwo/Versor~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transform)))
  "Returns full string definition for message of type 'Transform"
  (cl:format cl:nil "Vector translation~%Versor rotation~%~%================================================================================~%MSG: geomtwo/Vector~%float64 x~%float64 y~%~%================================================================================~%MSG: geomtwo/Versor~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transform>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transform>))
  "Converts a ROS message object to a list"
  (cl:list 'Transform
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
))
