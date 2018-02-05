;; Auto-generated. Do not edit!


(when (boundp 'beb::path)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'path (find-package "BEB")))
(unless (find-package "BEB::PATH")
  (make-package "BEB::PATH"))
(unless (find-package "BEB::PATHREQUEST")
  (make-package "BEB::PATHREQUEST"))
(unless (find-package "BEB::PATHRESPONSE")
  (make-package "BEB::PATHRESPONSE"))

(in-package "ROS")





(defclass beb::pathRequest
  :super ros::object
  :slots (_name ))

(defmethod beb::pathRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beb::pathResponse
  :super ros::object
  :slots ())

(defmethod beb::pathResponse
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

(defclass beb::path
  :super ros::object
  :slots ())

(setf (get beb::path :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get beb::path :datatype-) "beb/path")
(setf (get beb::path :request) beb::pathRequest)
(setf (get beb::path :response) beb::pathResponse)

(defmethod beb::pathRequest
  (:response () (instance beb::pathResponse :init)))

(setf (get beb::pathRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get beb::pathRequest :datatype-) "beb/pathRequest")
(setf (get beb::pathRequest :definition-)
      "string name
---


")

(setf (get beb::pathResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get beb::pathResponse :datatype-) "beb/pathResponse")
(setf (get beb::pathResponse :definition-)
      "string name
---


")



(provide :beb/path "c1f3d28f1b044c871e6eff2e9fc3c667")


