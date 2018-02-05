;; Auto-generated. Do not edit!


(when (boundp 'et_circumnavigation::Topology)
  (if (not (find-package "ET_CIRCUMNAVIGATION"))
    (make-package "ET_CIRCUMNAVIGATION"))
  (shadow 'Topology (find-package "ET_CIRCUMNAVIGATION")))
(unless (find-package "ET_CIRCUMNAVIGATION::TOPOLOGY")
  (make-package "ET_CIRCUMNAVIGATION::TOPOLOGY"))
(unless (find-package "ET_CIRCUMNAVIGATION::TOPOLOGYREQUEST")
  (make-package "ET_CIRCUMNAVIGATION::TOPOLOGYREQUEST"))
(unless (find-package "ET_CIRCUMNAVIGATION::TOPOLOGYRESPONSE")
  (make-package "ET_CIRCUMNAVIGATION::TOPOLOGYRESPONSE"))

(in-package "ROS")





(defclass et_circumnavigation::TopologyRequest
  :super ros::object
  :slots (_name ))

(defmethod et_circumnavigation::TopologyRequest
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

(defclass et_circumnavigation::TopologyResponse
  :super ros::object
  :slots ())

(defmethod et_circumnavigation::TopologyResponse
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

(defclass et_circumnavigation::Topology
  :super ros::object
  :slots ())

(setf (get et_circumnavigation::Topology :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::Topology :datatype-) "et_circumnavigation/Topology")
(setf (get et_circumnavigation::Topology :request) et_circumnavigation::TopologyRequest)
(setf (get et_circumnavigation::Topology :response) et_circumnavigation::TopologyResponse)

(defmethod et_circumnavigation::TopologyRequest
  (:response () (instance et_circumnavigation::TopologyResponse :init)))

(setf (get et_circumnavigation::TopologyRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::TopologyRequest :datatype-) "et_circumnavigation/TopologyRequest")
(setf (get et_circumnavigation::TopologyRequest :definition-)
      "string name
---
")

(setf (get et_circumnavigation::TopologyResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::TopologyResponse :datatype-) "et_circumnavigation/TopologyResponse")
(setf (get et_circumnavigation::TopologyResponse :definition-)
      "string name
---
")



(provide :et_circumnavigation/Topology "c1f3d28f1b044c871e6eff2e9fc3c667")


