;; Auto-generated. Do not edit!


(when (boundp 'beb::randomDelay)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'randomDelay (find-package "BEB")))
(unless (find-package "BEB::RANDOMDELAY")
  (make-package "BEB::RANDOMDELAY"))
(unless (find-package "BEB::RANDOMDELAYREQUEST")
  (make-package "BEB::RANDOMDELAYREQUEST"))
(unless (find-package "BEB::RANDOMDELAYRESPONSE")
  (make-package "BEB::RANDOMDELAYRESPONSE"))

(in-package "ROS")





(defclass beb::randomDelayRequest
  :super ros::object
  :slots (_askDelay ))

(defmethod beb::randomDelayRequest
  (:init
   (&key
    ((:askDelay __askDelay) nil)
    )
   (send-super :init)
   (setq _askDelay __askDelay)
   self)
  (:askDelay
   (&optional __askDelay)
   (if __askDelay (setq _askDelay __askDelay)) _askDelay)
  (:serialization-length
   ()
   (+
    ;; bool _askDelay
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _askDelay
       (if _askDelay (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _askDelay
     (setq _askDelay (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::randomDelayResponse
  :super ros::object
  :slots (_sendDelay ))

(defmethod beb::randomDelayResponse
  (:init
   (&key
    ((:sendDelay __sendDelay) 0.0)
    )
   (send-super :init)
   (setq _sendDelay (float __sendDelay))
   self)
  (:sendDelay
   (&optional __sendDelay)
   (if __sendDelay (setq _sendDelay __sendDelay)) _sendDelay)
  (:serialization-length
   ()
   (+
    ;; float32 _sendDelay
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sendDelay
       (sys::poke _sendDelay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sendDelay
     (setq _sendDelay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass beb::randomDelay
  :super ros::object
  :slots ())

(setf (get beb::randomDelay :md5sum-) "68d62eabb296c2a798f5e1a21d129e0d")
(setf (get beb::randomDelay :datatype-) "beb/randomDelay")
(setf (get beb::randomDelay :request) beb::randomDelayRequest)
(setf (get beb::randomDelay :response) beb::randomDelayResponse)

(defmethod beb::randomDelayRequest
  (:response () (instance beb::randomDelayResponse :init)))

(setf (get beb::randomDelayRequest :md5sum-) "68d62eabb296c2a798f5e1a21d129e0d")
(setf (get beb::randomDelayRequest :datatype-) "beb/randomDelayRequest")
(setf (get beb::randomDelayRequest :definition-)
      "bool askDelay
---
float32 sendDelay

")

(setf (get beb::randomDelayResponse :md5sum-) "68d62eabb296c2a798f5e1a21d129e0d")
(setf (get beb::randomDelayResponse :datatype-) "beb/randomDelayResponse")
(setf (get beb::randomDelayResponse :definition-)
      "bool askDelay
---
float32 sendDelay

")



(provide :beb/randomDelay "68d62eabb296c2a798f5e1a21d129e0d")


