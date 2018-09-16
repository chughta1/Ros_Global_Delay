;; Auto-generated. Do not edit!


(when (boundp 'beb::SendDelayLogic)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'SendDelayLogic (find-package "BEB")))
(unless (find-package "BEB::SENDDELAYLOGIC")
  (make-package "BEB::SENDDELAYLOGIC"))
(unless (find-package "BEB::SENDDELAYLOGICREQUEST")
  (make-package "BEB::SENDDELAYLOGICREQUEST"))
(unless (find-package "BEB::SENDDELAYLOGICRESPONSE")
  (make-package "BEB::SENDDELAYLOGICRESPONSE"))

(in-package "ROS")





(defclass beb::SendDelayLogicRequest
  :super ros::object
  :slots ())

(defmethod beb::SendDelayLogicRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beb::SendDelayLogicResponse
  :super ros::object
  :slots ())

(defmethod beb::SendDelayLogicResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beb::SendDelayLogic
  :super ros::object
  :slots ())

(setf (get beb::SendDelayLogic :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::SendDelayLogic :datatype-) "beb/SendDelayLogic")
(setf (get beb::SendDelayLogic :request) beb::SendDelayLogicRequest)
(setf (get beb::SendDelayLogic :response) beb::SendDelayLogicResponse)

(defmethod beb::SendDelayLogicRequest
  (:response () (instance beb::SendDelayLogicResponse :init)))

(setf (get beb::SendDelayLogicRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::SendDelayLogicRequest :datatype-) "beb/SendDelayLogicRequest")
(setf (get beb::SendDelayLogicRequest :definition-)
      "---


")

(setf (get beb::SendDelayLogicResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::SendDelayLogicResponse :datatype-) "beb/SendDelayLogicResponse")
(setf (get beb::SendDelayLogicResponse :definition-)
      "---


")



(provide :beb/SendDelayLogic "d41d8cd98f00b204e9800998ecf8427e")


