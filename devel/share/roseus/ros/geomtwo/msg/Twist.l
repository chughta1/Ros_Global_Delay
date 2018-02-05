;; Auto-generated. Do not edit!


(when (boundp 'geomtwo::Twist)
  (if (not (find-package "GEOMTWO"))
    (make-package "GEOMTWO"))
  (shadow 'Twist (find-package "GEOMTWO")))
(unless (find-package "GEOMTWO::TWIST")
  (make-package "GEOMTWO::TWIST"))

(in-package "ROS")
;;//! \htmlinclude Twist.msg.html


(defclass geomtwo::Twist
  :super ros::object
  :slots (_linear _angular ))

(defmethod geomtwo::Twist
  (:init
   (&key
    ((:linear __linear) (instance geomtwo::Vector :init))
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular (float __angular))
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; geomtwo/Vector _linear
    (send _linear :serialization-length)
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geomtwo/Vector _linear
       (send _linear :serialize s)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geomtwo/Vector _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get geomtwo::Twist :md5sum-) "e220fd6a55863b5eec21b2aa462260f5")
(setf (get geomtwo::Twist :datatype-) "geomtwo/Twist")
(setf (get geomtwo::Twist :definition-)
      "Vector linear
float64 angular

================================================================================
MSG: geomtwo/Vector
float64 x
float64 y

")



(provide :geomtwo/Twist "e220fd6a55863b5eec21b2aa462260f5")


