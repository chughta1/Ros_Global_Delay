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
  :slots (_askdb ))

(defmethod beb::SendDelayLogicRequest
  (:init
   (&key
    ((:askdb __askdb) nil)
    )
   (send-super :init)
   (setq _askdb __askdb)
   self)
  (:askdb
   (&optional __askdb)
   (if __askdb (setq _askdb __askdb)) _askdb)
  (:serialization-length
   ()
   (+
    ;; bool _askdb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _askdb
       (if _askdb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _askdb
     (setq _askdb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::SendDelayLogicResponse
  :super ros::object
  :slots (_senddb ))

(defmethod beb::SendDelayLogicResponse
  (:init
   (&key
    ((:senddb __senddb) nil)
    )
   (send-super :init)
   (setq _senddb __senddb)
   self)
  (:senddb
   (&optional __senddb)
   (if __senddb (setq _senddb __senddb)) _senddb)
  (:serialization-length
   ()
   (+
    ;; bool _senddb
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _senddb
       (if _senddb (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _senddb
     (setq _senddb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::SendDelayLogic
  :super ros::object
  :slots ())

(setf (get beb::SendDelayLogic :md5sum-) "2b123fbf2a4603e168a3151939e3bbe7")
(setf (get beb::SendDelayLogic :datatype-) "beb/SendDelayLogic")
(setf (get beb::SendDelayLogic :request) beb::SendDelayLogicRequest)
(setf (get beb::SendDelayLogic :response) beb::SendDelayLogicResponse)

(defmethod beb::SendDelayLogicRequest
  (:response () (instance beb::SendDelayLogicResponse :init)))

(setf (get beb::SendDelayLogicRequest :md5sum-) "2b123fbf2a4603e168a3151939e3bbe7")
(setf (get beb::SendDelayLogicRequest :datatype-) "beb/SendDelayLogicRequest")
(setf (get beb::SendDelayLogicRequest :definition-)
      "bool askdb
---
bool senddb

")

(setf (get beb::SendDelayLogicResponse :md5sum-) "2b123fbf2a4603e168a3151939e3bbe7")
(setf (get beb::SendDelayLogicResponse :datatype-) "beb/SendDelayLogicResponse")
(setf (get beb::SendDelayLogicResponse :definition-)
      "bool askdb
---
bool senddb

")



(provide :beb/SendDelayLogic "2b123fbf2a4603e168a3151939e3bbe7")


