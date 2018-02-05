;; Auto-generated. Do not edit!


(when (boundp 'beb::CheckLearn)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'CheckLearn (find-package "BEB")))
(unless (find-package "BEB::CHECKLEARN")
  (make-package "BEB::CHECKLEARN"))
(unless (find-package "BEB::CHECKLEARNREQUEST")
  (make-package "BEB::CHECKLEARNREQUEST"))
(unless (find-package "BEB::CHECKLEARNRESPONSE")
  (make-package "BEB::CHECKLEARNRESPONSE"))

(in-package "ROS")





(defclass beb::CheckLearnRequest
  :super ros::object
  :slots ())

(defmethod beb::CheckLearnRequest
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

(defclass beb::CheckLearnResponse
  :super ros::object
  :slots (_LearnConf ))

(defmethod beb::CheckLearnResponse
  (:init
   (&key
    ((:LearnConf __LearnConf) nil)
    )
   (send-super :init)
   (setq _LearnConf __LearnConf)
   self)
  (:LearnConf
   (&optional __LearnConf)
   (if __LearnConf (setq _LearnConf __LearnConf)) _LearnConf)
  (:serialization-length
   ()
   (+
    ;; bool _LearnConf
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _LearnConf
       (if _LearnConf (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _LearnConf
     (setq _LearnConf (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::CheckLearn
  :super ros::object
  :slots ())

(setf (get beb::CheckLearn :md5sum-) "628b9d6a3c360f58582c93f2715ade47")
(setf (get beb::CheckLearn :datatype-) "beb/CheckLearn")
(setf (get beb::CheckLearn :request) beb::CheckLearnRequest)
(setf (get beb::CheckLearn :response) beb::CheckLearnResponse)

(defmethod beb::CheckLearnRequest
  (:response () (instance beb::CheckLearnResponse :init)))

(setf (get beb::CheckLearnRequest :md5sum-) "628b9d6a3c360f58582c93f2715ade47")
(setf (get beb::CheckLearnRequest :datatype-) "beb/CheckLearnRequest")
(setf (get beb::CheckLearnRequest :definition-)
      "---
bool LearnConf

")

(setf (get beb::CheckLearnResponse :md5sum-) "628b9d6a3c360f58582c93f2715ade47")
(setf (get beb::CheckLearnResponse :datatype-) "beb/CheckLearnResponse")
(setf (get beb::CheckLearnResponse :definition-)
      "---
bool LearnConf

")



(provide :beb/CheckLearn "628b9d6a3c360f58582c93f2715ade47")


