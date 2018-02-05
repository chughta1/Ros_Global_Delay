;; Auto-generated. Do not edit!


(when (boundp 'et_circumnavigation::RemoveAgent)
  (if (not (find-package "ET_CIRCUMNAVIGATION"))
    (make-package "ET_CIRCUMNAVIGATION"))
  (shadow 'RemoveAgent (find-package "ET_CIRCUMNAVIGATION")))
(unless (find-package "ET_CIRCUMNAVIGATION::REMOVEAGENT")
  (make-package "ET_CIRCUMNAVIGATION::REMOVEAGENT"))
(unless (find-package "ET_CIRCUMNAVIGATION::REMOVEAGENTREQUEST")
  (make-package "ET_CIRCUMNAVIGATION::REMOVEAGENTREQUEST"))
(unless (find-package "ET_CIRCUMNAVIGATION::REMOVEAGENTRESPONSE")
  (make-package "ET_CIRCUMNAVIGATION::REMOVEAGENTRESPONSE"))

(in-package "ROS")





(defclass et_circumnavigation::RemoveAgentRequest
  :super ros::object
  :slots (_name ))

(defmethod et_circumnavigation::RemoveAgentRequest
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

(defclass et_circumnavigation::RemoveAgentResponse
  :super ros::object
  :slots ())

(defmethod et_circumnavigation::RemoveAgentResponse
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

(defclass et_circumnavigation::RemoveAgent
  :super ros::object
  :slots ())

(setf (get et_circumnavigation::RemoveAgent :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::RemoveAgent :datatype-) "et_circumnavigation/RemoveAgent")
(setf (get et_circumnavigation::RemoveAgent :request) et_circumnavigation::RemoveAgentRequest)
(setf (get et_circumnavigation::RemoveAgent :response) et_circumnavigation::RemoveAgentResponse)

(defmethod et_circumnavigation::RemoveAgentRequest
  (:response () (instance et_circumnavigation::RemoveAgentResponse :init)))

(setf (get et_circumnavigation::RemoveAgentRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::RemoveAgentRequest :datatype-) "et_circumnavigation/RemoveAgentRequest")
(setf (get et_circumnavigation::RemoveAgentRequest :definition-)
      "string name
---
")

(setf (get et_circumnavigation::RemoveAgentResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::RemoveAgentResponse :datatype-) "et_circumnavigation/RemoveAgentResponse")
(setf (get et_circumnavigation::RemoveAgentResponse :definition-)
      "string name
---
")



(provide :et_circumnavigation/RemoveAgent "c1f3d28f1b044c871e6eff2e9fc3c667")


