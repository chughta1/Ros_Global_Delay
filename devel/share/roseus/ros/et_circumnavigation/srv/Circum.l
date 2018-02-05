;; Auto-generated. Do not edit!


(when (boundp 'et_circumnavigation::Circum)
  (if (not (find-package "ET_CIRCUMNAVIGATION"))
    (make-package "ET_CIRCUMNAVIGATION"))
  (shadow 'Circum (find-package "ET_CIRCUMNAVIGATION")))
(unless (find-package "ET_CIRCUMNAVIGATION::CIRCUM")
  (make-package "ET_CIRCUMNAVIGATION::CIRCUM"))
(unless (find-package "ET_CIRCUMNAVIGATION::CIRCUMREQUEST")
  (make-package "ET_CIRCUMNAVIGATION::CIRCUMREQUEST"))
(unless (find-package "ET_CIRCUMNAVIGATION::CIRCUMRESPONSE")
  (make-package "ET_CIRCUMNAVIGATION::CIRCUMRESPONSE"))

(in-package "ROS")





(defclass et_circumnavigation::CircumRequest
  :super ros::object
  :slots ())

(defmethod et_circumnavigation::CircumRequest
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

(defclass et_circumnavigation::CircumResponse
  :super ros::object
  :slots ())

(defmethod et_circumnavigation::CircumResponse
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

(defclass et_circumnavigation::Circum
  :super ros::object
  :slots ())

(setf (get et_circumnavigation::Circum :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get et_circumnavigation::Circum :datatype-) "et_circumnavigation/Circum")
(setf (get et_circumnavigation::Circum :request) et_circumnavigation::CircumRequest)
(setf (get et_circumnavigation::Circum :response) et_circumnavigation::CircumResponse)

(defmethod et_circumnavigation::CircumRequest
  (:response () (instance et_circumnavigation::CircumResponse :init)))

(setf (get et_circumnavigation::CircumRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get et_circumnavigation::CircumRequest :datatype-) "et_circumnavigation/CircumRequest")
(setf (get et_circumnavigation::CircumRequest :definition-)
      "
---
")

(setf (get et_circumnavigation::CircumResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get et_circumnavigation::CircumResponse :datatype-) "et_circumnavigation/CircumResponse")
(setf (get et_circumnavigation::CircumResponse :definition-)
      "
---
")



(provide :et_circumnavigation/Circum "d41d8cd98f00b204e9800998ecf8427e")


