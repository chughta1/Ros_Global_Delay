;; Auto-generated. Do not edit!


(when (boundp 'beb::Complete)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'Complete (find-package "BEB")))
(unless (find-package "BEB::COMPLETE")
  (make-package "BEB::COMPLETE"))
(unless (find-package "BEB::COMPLETEREQUEST")
  (make-package "BEB::COMPLETEREQUEST"))
(unless (find-package "BEB::COMPLETERESPONSE")
  (make-package "BEB::COMPLETERESPONSE"))

(in-package "ROS")





(defclass beb::CompleteRequest
  :super ros::object
  :slots (_check ))

(defmethod beb::CompleteRequest
  (:init
   (&key
    ((:check __check) nil)
    )
   (send-super :init)
   (setq _check __check)
   self)
  (:check
   (&optional __check)
   (if __check (setq _check __check)) _check)
  (:serialization-length
   ()
   (+
    ;; bool _check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _check
       (if _check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _check
     (setq _check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::CompleteResponse
  :super ros::object
  :slots (_complete ))

(defmethod beb::CompleteResponse
  (:init
   (&key
    ((:complete __complete) nil)
    )
   (send-super :init)
   (setq _complete __complete)
   self)
  (:complete
   (&optional __complete)
   (if __complete (setq _complete __complete)) _complete)
  (:serialization-length
   ()
   (+
    ;; bool _complete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _complete
       (if _complete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _complete
     (setq _complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::Complete
  :super ros::object
  :slots ())

(setf (get beb::Complete :md5sum-) "8b08a6f5f9673998ccc75228e00beb4f")
(setf (get beb::Complete :datatype-) "beb/Complete")
(setf (get beb::Complete :request) beb::CompleteRequest)
(setf (get beb::Complete :response) beb::CompleteResponse)

(defmethod beb::CompleteRequest
  (:response () (instance beb::CompleteResponse :init)))

(setf (get beb::CompleteRequest :md5sum-) "8b08a6f5f9673998ccc75228e00beb4f")
(setf (get beb::CompleteRequest :datatype-) "beb/CompleteRequest")
(setf (get beb::CompleteRequest :definition-)
      "bool check
---
bool complete

")

(setf (get beb::CompleteResponse :md5sum-) "8b08a6f5f9673998ccc75228e00beb4f")
(setf (get beb::CompleteResponse :datatype-) "beb/CompleteResponse")
(setf (get beb::CompleteResponse :definition-)
      "bool check
---
bool complete

")



(provide :beb/Complete "8b08a6f5f9673998ccc75228e00beb4f")


