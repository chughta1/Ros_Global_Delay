;; Auto-generated. Do not edit!


(when (boundp 'beb::broadReady)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'broadReady (find-package "BEB")))
(unless (find-package "BEB::BROADREADY")
  (make-package "BEB::BROADREADY"))
(unless (find-package "BEB::BROADREADYREQUEST")
  (make-package "BEB::BROADREADYREQUEST"))
(unless (find-package "BEB::BROADREADYRESPONSE")
  (make-package "BEB::BROADREADYRESPONSE"))

(in-package "ROS")





(defclass beb::broadReadyRequest
  :super ros::object
  :slots (_breadyask ))

(defmethod beb::broadReadyRequest
  (:init
   (&key
    ((:breadyask __breadyask) nil)
    )
   (send-super :init)
   (setq _breadyask __breadyask)
   self)
  (:breadyask
   (&optional __breadyask)
   (if __breadyask (setq _breadyask __breadyask)) _breadyask)
  (:serialization-length
   ()
   (+
    ;; bool _breadyask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _breadyask
       (if _breadyask (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _breadyask
     (setq _breadyask (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::broadReadyResponse
  :super ros::object
  :slots (_breadyres ))

(defmethod beb::broadReadyResponse
  (:init
   (&key
    ((:breadyres __breadyres) nil)
    )
   (send-super :init)
   (setq _breadyres __breadyres)
   self)
  (:breadyres
   (&optional __breadyres)
   (if __breadyres (setq _breadyres __breadyres)) _breadyres)
  (:serialization-length
   ()
   (+
    ;; bool _breadyres
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _breadyres
       (if _breadyres (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _breadyres
     (setq _breadyres (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::broadReady
  :super ros::object
  :slots ())

(setf (get beb::broadReady :md5sum-) "a7ac84f4d9ccfe63fababeef70137cb0")
(setf (get beb::broadReady :datatype-) "beb/broadReady")
(setf (get beb::broadReady :request) beb::broadReadyRequest)
(setf (get beb::broadReady :response) beb::broadReadyResponse)

(defmethod beb::broadReadyRequest
  (:response () (instance beb::broadReadyResponse :init)))

(setf (get beb::broadReadyRequest :md5sum-) "a7ac84f4d9ccfe63fababeef70137cb0")
(setf (get beb::broadReadyRequest :datatype-) "beb/broadReadyRequest")
(setf (get beb::broadReadyRequest :definition-)
      "bool breadyask
---
bool breadyres


")

(setf (get beb::broadReadyResponse :md5sum-) "a7ac84f4d9ccfe63fababeef70137cb0")
(setf (get beb::broadReadyResponse :datatype-) "beb/broadReadyResponse")
(setf (get beb::broadReadyResponse :definition-)
      "bool breadyask
---
bool breadyres


")



(provide :beb/broadReady "a7ac84f4d9ccfe63fababeef70137cb0")


