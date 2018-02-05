;; Auto-generated. Do not edit!


(when (boundp 'beb::land)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'land (find-package "BEB")))
(unless (find-package "BEB::LAND")
  (make-package "BEB::LAND"))
(unless (find-package "BEB::LANDREQUEST")
  (make-package "BEB::LANDREQUEST"))
(unless (find-package "BEB::LANDRESPONSE")
  (make-package "BEB::LANDRESPONSE"))

(in-package "ROS")





(defclass beb::landRequest
  :super ros::object
  :slots ())

(defmethod beb::landRequest
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

(defclass beb::landResponse
  :super ros::object
  :slots ())

(defmethod beb::landResponse
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

(defclass beb::land
  :super ros::object
  :slots ())

(setf (get beb::land :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::land :datatype-) "beb/land")
(setf (get beb::land :request) beb::landRequest)
(setf (get beb::land :response) beb::landResponse)

(defmethod beb::landRequest
  (:response () (instance beb::landResponse :init)))

(setf (get beb::landRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::landRequest :datatype-) "beb/landRequest")
(setf (get beb::landRequest :definition-)
      "---


")

(setf (get beb::landResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get beb::landResponse :datatype-) "beb/landResponse")
(setf (get beb::landResponse :definition-)
      "---


")



(provide :beb/land "d41d8cd98f00b204e9800998ecf8427e")


