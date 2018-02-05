;; Auto-generated. Do not edit!


(when (boundp 'beb::TrReady)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'TrReady (find-package "BEB")))
(unless (find-package "BEB::TRREADY")
  (make-package "BEB::TRREADY"))
(unless (find-package "BEB::TRREADYREQUEST")
  (make-package "BEB::TRREADYREQUEST"))
(unless (find-package "BEB::TRREADYRESPONSE")
  (make-package "BEB::TRREADYRESPONSE"))

(in-package "ROS")





(defclass beb::TrReadyRequest
  :super ros::object
  :slots (_askTrain ))

(defmethod beb::TrReadyRequest
  (:init
   (&key
    ((:askTrain __askTrain) nil)
    )
   (send-super :init)
   (setq _askTrain __askTrain)
   self)
  (:askTrain
   (&optional __askTrain)
   (if __askTrain (setq _askTrain __askTrain)) _askTrain)
  (:serialization-length
   ()
   (+
    ;; bool _askTrain
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _askTrain
       (if _askTrain (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _askTrain
     (setq _askTrain (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::TrReadyResponse
  :super ros::object
  :slots (_resTrain ))

(defmethod beb::TrReadyResponse
  (:init
   (&key
    ((:resTrain __resTrain) nil)
    )
   (send-super :init)
   (setq _resTrain __resTrain)
   self)
  (:resTrain
   (&optional __resTrain)
   (if __resTrain (setq _resTrain __resTrain)) _resTrain)
  (:serialization-length
   ()
   (+
    ;; bool _resTrain
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resTrain
       (if _resTrain (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resTrain
     (setq _resTrain (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::TrReady
  :super ros::object
  :slots ())

(setf (get beb::TrReady :md5sum-) "48dfce180ae15a999c8da093ded5649e")
(setf (get beb::TrReady :datatype-) "beb/TrReady")
(setf (get beb::TrReady :request) beb::TrReadyRequest)
(setf (get beb::TrReady :response) beb::TrReadyResponse)

(defmethod beb::TrReadyRequest
  (:response () (instance beb::TrReadyResponse :init)))

(setf (get beb::TrReadyRequest :md5sum-) "48dfce180ae15a999c8da093ded5649e")
(setf (get beb::TrReadyRequest :datatype-) "beb/TrReadyRequest")
(setf (get beb::TrReadyRequest :definition-)
      "bool askTrain
---
bool resTrain

")

(setf (get beb::TrReadyResponse :md5sum-) "48dfce180ae15a999c8da093ded5649e")
(setf (get beb::TrReadyResponse :datatype-) "beb/TrReadyResponse")
(setf (get beb::TrReadyResponse :definition-)
      "bool askTrain
---
bool resTrain

")



(provide :beb/TrReady "48dfce180ae15a999c8da093ded5649e")


