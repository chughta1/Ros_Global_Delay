;; Auto-generated. Do not edit!


(when (boundp 'beb::Estimate)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'Estimate (find-package "BEB")))
(unless (find-package "BEB::ESTIMATE")
  (make-package "BEB::ESTIMATE"))
(unless (find-package "BEB::ESTIMATEREQUEST")
  (make-package "BEB::ESTIMATEREQUEST"))
(unless (find-package "BEB::ESTIMATERESPONSE")
  (make-package "BEB::ESTIMATERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass beb::EstimateRequest
  :super ros::object
  :slots (_askEstimate ))

(defmethod beb::EstimateRequest
  (:init
   (&key
    ((:askEstimate __askEstimate) nil)
    )
   (send-super :init)
   (setq _askEstimate __askEstimate)
   self)
  (:askEstimate
   (&optional __askEstimate)
   (if __askEstimate (setq _askEstimate __askEstimate)) _askEstimate)
  (:serialization-length
   ()
   (+
    ;; bool _askEstimate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _askEstimate
       (if _askEstimate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _askEstimate
     (setq _askEstimate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::EstimateResponse
  :super ros::object
  :slots (_Est ))

(defmethod beb::EstimateResponse
  (:init
   (&key
    ((:Est __Est) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _Est __Est)
   self)
  (:Est
   (&rest __Est)
   (if (keywordp (car __Est))
       (send* _Est __Est)
     (progn
       (if __Est (setq _Est (car __Est)))
       _Est)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _Est
    (send _Est :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _Est
       (send _Est :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _Est
     (send _Est :deserialize buf ptr-) (incf ptr- (send _Est :serialization-length))
   ;;
   self)
  )

(defclass beb::Estimate
  :super ros::object
  :slots ())

(setf (get beb::Estimate :md5sum-) "8f3e47450b5620c15f2f584c2ee92cf6")
(setf (get beb::Estimate :datatype-) "beb/Estimate")
(setf (get beb::Estimate :request) beb::EstimateRequest)
(setf (get beb::Estimate :response) beb::EstimateResponse)

(defmethod beb::EstimateRequest
  (:response () (instance beb::EstimateResponse :init)))

(setf (get beb::EstimateRequest :md5sum-) "8f3e47450b5620c15f2f584c2ee92cf6")
(setf (get beb::EstimateRequest :datatype-) "beb/EstimateRequest")
(setf (get beb::EstimateRequest :definition-)
      "bool askEstimate
---
geometry_msgs/Vector3 Est


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get beb::EstimateResponse :md5sum-) "8f3e47450b5620c15f2f584c2ee92cf6")
(setf (get beb::EstimateResponse :datatype-) "beb/EstimateResponse")
(setf (get beb::EstimateResponse :definition-)
      "bool askEstimate
---
geometry_msgs/Vector3 Est


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :beb/Estimate "8f3e47450b5620c15f2f584c2ee92cf6")


