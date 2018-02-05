; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude Optimized-request.msg.html

(cl:defclass <Optimized-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Optimized-request (<Optimized-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimized-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimized-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Optimized-request> is deprecated: use beb-srv:Optimized-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <Optimized-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:ask-val is deprecated.  Use beb-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Optimized-request>) ostream)
  "Serializes a message object of type '<Optimized-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Optimized-request>) istream)
  "Deserializes a message object of type '<Optimized-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimized-request>)))
  "Returns string type for a service object of type '<Optimized-request>"
  "beb/OptimizedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimized-request)))
  "Returns string type for a service object of type 'Optimized-request"
  "beb/OptimizedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimized-request>)))
  "Returns md5sum for a message object of type '<Optimized-request>"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimized-request)))
  "Returns md5sum for a message object of type 'Optimized-request"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimized-request>)))
  "Returns full string definition for message of type '<Optimized-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimized-request)))
  "Returns full string definition for message of type 'Optimized-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimized-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimized-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimized-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude Optimized-response.msg.html

(cl:defclass <Optimized-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Optimized-response (<Optimized-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Optimized-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Optimized-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Optimized-response> is deprecated: use beb-srv:Optimized-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <Optimized-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:done-val is deprecated.  Use beb-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Optimized-response>) ostream)
  "Serializes a message object of type '<Optimized-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'done))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'done))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Optimized-response>) istream)
  "Deserializes a message object of type '<Optimized-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'done) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'done)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Optimized-response>)))
  "Returns string type for a service object of type '<Optimized-response>"
  "beb/OptimizedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimized-response)))
  "Returns string type for a service object of type 'Optimized-response"
  "beb/OptimizedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Optimized-response>)))
  "Returns md5sum for a message object of type '<Optimized-response>"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Optimized-response)))
  "Returns md5sum for a message object of type 'Optimized-response"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Optimized-response>)))
  "Returns full string definition for message of type '<Optimized-response>"
  (cl:format cl:nil "float64[] done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Optimized-response)))
  "Returns full string definition for message of type 'Optimized-response"
  (cl:format cl:nil "float64[] done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Optimized-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'done) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Optimized-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Optimized-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Optimized)))
  'Optimized-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Optimized)))
  'Optimized-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Optimized)))
  "Returns string type for a service object of type '<Optimized>"
  "beb/Optimized")