;; Auto-generated. Do not edit!


(when (boundp 'geomtwo::Pose)
  (if (not (find-package "GEOMTWO"))
    (make-package "GEOMTWO"))
  (shadow 'Pose (find-package "GEOMTWO")))
(unless (find-package "GEOMTWO::POSE")
  (make-package "GEOMTWO::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass geomtwo::Pose
  :super ros::object
  :slots (_position _orientation ))

(defmethod geomtwo::Pose
  (:init
   (&key
    ((:position __position) (instance geomtwo::Point :init))
    ((:orientation __orientation) (instance geomtwo::Versor :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; geomtwo/Point _position
    (send _position :serialization-length)
    ;; geomtwo/Versor _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geomtwo/Point _position
       (send _position :serialize s)
     ;; geomtwo/Versor _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geomtwo/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geomtwo/Versor _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get geomtwo::Pose :md5sum-) "5b953365f8a2589dfd0aee87e64ea032")
(setf (get geomtwo::Pose :datatype-) "geomtwo/Pose")
(setf (get geomtwo::Pose :definition-)
      "Point position
Versor orientation

================================================================================
MSG: geomtwo/Point
float64 x
float64 y

================================================================================
MSG: geomtwo/Versor
float64 x
float64 y

")



(provide :geomtwo/Pose "5b953365f8a2589dfd0aee87e64ea032")


