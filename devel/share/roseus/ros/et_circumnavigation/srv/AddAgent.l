;; Auto-generated. Do not edit!


(when (boundp 'et_circumnavigation::AddAgent)
  (if (not (find-package "ET_CIRCUMNAVIGATION"))
    (make-package "ET_CIRCUMNAVIGATION"))
  (shadow 'AddAgent (find-package "ET_CIRCUMNAVIGATION")))
(unless (find-package "ET_CIRCUMNAVIGATION::ADDAGENT")
  (make-package "ET_CIRCUMNAVIGATION::ADDAGENT"))
(unless (find-package "ET_CIRCUMNAVIGATION::ADDAGENTREQUEST")
  (make-package "ET_CIRCUMNAVIGATION::ADDAGENTREQUEST"))
(unless (find-package "ET_CIRCUMNAVIGATION::ADDAGENTRESPONSE")
  (make-package "ET_CIRCUMNAVIGATION::ADDAGENTRESPONSE"))

(in-package "ROS")





(defclass et_circumnavigation::AddAgentRequest
  :super ros::object
  :slots (_name ))

(defmethod et_circumnavigation::AddAgentRequest
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

(defclass et_circumnavigation::AddAgentResponse
  :super ros::object
  :slots ())

(defmethod et_circumnavigation::AddAgentResponse
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

(defclass et_circumnavigation::AddAgent
  :super ros::object
  :slots ())

(setf (get et_circumnavigation::AddAgent :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::AddAgent :datatype-) "et_circumnavigation/AddAgent")
(setf (get et_circumnavigation::AddAgent :request) et_circumnavigation::AddAgentRequest)
(setf (get et_circumnavigation::AddAgent :response) et_circumnavigation::AddAgentResponse)

(defmethod et_circumnavigation::AddAgentRequest
  (:response () (instance et_circumnavigation::AddAgentResponse :init)))

(setf (get et_circumnavigation::AddAgentRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::AddAgentRequest :datatype-) "et_circumnavigation/AddAgentRequest")
(setf (get et_circumnavigation::AddAgentRequest :definition-)
      "string name
---
")

(setf (get et_circumnavigation::AddAgentResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get et_circumnavigation::AddAgentResponse :datatype-) "et_circumnavigation/AddAgentResponse")
(setf (get et_circumnavigation::AddAgentResponse :definition-)
      "string name
---
")



(provide :et_circumnavigation/AddAgent "c1f3d28f1b044c871e6eff2e9fc3c667")


