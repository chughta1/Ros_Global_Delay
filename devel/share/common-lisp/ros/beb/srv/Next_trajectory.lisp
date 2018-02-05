; Auto-generated. Do not edit!


(cl:in-package beb-srv)


;//! \htmlinclude Next_trajectory-request.msg.html

(cl:defclass <Next_trajectory-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Next_trajectory-request (<Next_trajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Next_trajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Next_trajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Next_trajectory-request> is deprecated: use beb-srv:Next_trajectory-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <Next_trajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:ask-val is deprecated.  Use beb-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Next_trajectory-request>) ostream)
  "Serializes a message object of type '<Next_trajectory-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Next_trajectory-request>) istream)
  "Deserializes a message object of type '<Next_trajectory-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Next_trajectory-request>)))
  "Returns string type for a service object of type '<Next_trajectory-request>"
  "beb/Next_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Next_trajectory-request)))
  "Returns string type for a service object of type 'Next_trajectory-request"
  "beb/Next_trajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Next_trajectory-request>)))
  "Returns md5sum for a message object of type '<Next_trajectory-request>"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Next_trajectory-request)))
  "Returns md5sum for a message object of type 'Next_trajectory-request"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Next_trajectory-request>)))
  "Returns full string definition for message of type '<Next_trajectory-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Next_trajectory-request)))
  "Returns full string definition for message of type 'Next_trajectory-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Next_trajectory-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Next_trajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Next_trajectory-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude Next_trajectory-response.msg.html

(cl:defclass <Next_trajectory-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Next_trajectory-response (<Next_trajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Next_trajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Next_trajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beb-srv:<Next_trajectory-response> is deprecated: use beb-srv:Next_trajectory-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <Next_trajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beb-srv:done-val is deprecated.  Use beb-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Next_trajectory-response>) ostream)
  "Serializes a message object of type '<Next_trajectory-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Next_trajectory-response>) istream)
  "Deserializes a message object of type '<Next_trajectory-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Next_trajectory-response>)))
  "Returns string type for a service object of type '<Next_trajectory-response>"
  "beb/Next_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Next_trajectory-response)))
  "Returns string type for a service object of type 'Next_trajectory-response"
  "beb/Next_trajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Next_trajectory-response>)))
  "Returns md5sum for a message object of type '<Next_trajectory-response>"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Next_trajectory-response)))
  "Returns md5sum for a message object of type 'Next_trajectory-response"
  "44cbd9eed0dcaf0a9959d08fbba67dd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Next_trajectory-response>)))
  "Returns full string definition for message of type '<Next_trajectory-response>"
  (cl:format cl:nil "float64[] done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Next_trajectory-response)))
  "Returns full string definition for message of type 'Next_trajectory-response"
  (cl:format cl:nil "float64[] done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Next_trajectory-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'done) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Next_trajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Next_trajectory-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Next_trajectory)))
  'Next_trajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Next_trajectory)))
  'Next_trajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Next_trajectory)))
  "Returns string type for a service object of type '<Next_trajectory>"
  "beb/Next_trajectory")