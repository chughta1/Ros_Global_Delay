;; Auto-generated. Do not edit!


(when (boundp 'beb::Next_trajectory)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'Next_trajectory (find-package "BEB")))
(unless (find-package "BEB::NEXT_TRAJECTORY")
  (make-package "BEB::NEXT_TRAJECTORY"))
(unless (find-package "BEB::NEXT_TRAJECTORYREQUEST")
  (make-package "BEB::NEXT_TRAJECTORYREQUEST"))
(unless (find-package "BEB::NEXT_TRAJECTORYRESPONSE")
  (make-package "BEB::NEXT_TRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass beb::Next_trajectoryRequest
  :super ros::object
  :slots (_ask ))

(defmethod beb::Next_trajectoryRequest
  (:init
   (&key
    ((:ask __ask) nil)
    )
   (send-super :init)
   (setq _ask __ask)
   self)
  (:ask
   (&optional __ask)
   (if __ask (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; bool _ask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ask
       (if _ask (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ask
     (setq _ask (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beb::Next_trajectoryResponse
  :super ros::object
  :slots (_done ))

(defmethod beb::Next_trajectoryResponse
  (:init
   (&key
    ((:done __done) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _done __done)
   self)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; float64[] _done
    (* 8    (length _done)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _done
     (write-long (length _done) s)
     (dotimes (i (length _done))
       (sys::poke (elt _done i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _done
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _done (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _done i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass beb::Next_trajectory
  :super ros::object
  :slots ())

(setf (get beb::Next_trajectory :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::Next_trajectory :datatype-) "beb/Next_trajectory")
(setf (get beb::Next_trajectory :request) beb::Next_trajectoryRequest)
(setf (get beb::Next_trajectory :response) beb::Next_trajectoryResponse)

(defmethod beb::Next_trajectoryRequest
  (:response () (instance beb::Next_trajectoryResponse :init)))

(setf (get beb::Next_trajectoryRequest :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::Next_trajectoryRequest :datatype-) "beb/Next_trajectoryRequest")
(setf (get beb::Next_trajectoryRequest :definition-)
      "bool ask
---
float64[] done

")

(setf (get beb::Next_trajectoryResponse :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::Next_trajectoryResponse :datatype-) "beb/Next_trajectoryResponse")
(setf (get beb::Next_trajectoryResponse :definition-)
      "bool ask
---
float64[] done

")



(provide :beb/Next_trajectory "44cbd9eed0dcaf0a9959d08fbba67dd6")


