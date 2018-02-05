;; Auto-generated. Do not edit!


(when (boundp 'geomtwo::Transform)
  (if (not (find-package "GEOMTWO"))
    (make-package "GEOMTWO"))
  (shadow 'Transform (find-package "GEOMTWO")))
(unless (find-package "GEOMTWO::TRANSFORM")
  (make-package "GEOMTWO::TRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude Transform.msg.html


(defclass geomtwo::Transform
  :super ros::object
  :slots (_translation _rotation ))

(defmethod geomtwo::Transform
  (:init
   (&key
    ((:translation __translation) (instance geomtwo::Vector :init))
    ((:rotation __rotation) (instance geomtwo::Versor :init))
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:serialization-length
   ()
   (+
    ;; geomtwo/Vector _translation
    (send _translation :serialization-length)
    ;; geomtwo/Versor _rotation
    (send _rotation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geomtwo/Vector _translation
       (send _translation :serialize s)
     ;; geomtwo/Versor _rotation
       (send _rotation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geomtwo/Vector _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; geomtwo/Versor _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get geomtwo::Transform :md5sum-) "932b254785c4937fbabf36a74854ba5d")
(setf (get geomtwo::Transform :datatype-) "geomtwo/Transform")
(setf (get geomtwo::Transform :definition-)
      "Vector translation
Versor rotation

================================================================================
MSG: geomtwo/Vector
float64 x
float64 y

================================================================================
MSG: geomtwo/Versor
float64 x
float64 y

")



(provide :geomtwo/Transform "932b254785c4937fbabf36a74854ba5d")


