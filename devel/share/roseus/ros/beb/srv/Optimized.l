;; Auto-generated. Do not edit!


(when (boundp 'beb::Optimized)
  (if (not (find-package "BEB"))
    (make-package "BEB"))
  (shadow 'Optimized (find-package "BEB")))
(unless (find-package "BEB::OPTIMIZED")
  (make-package "BEB::OPTIMIZED"))
(unless (find-package "BEB::OPTIMIZEDREQUEST")
  (make-package "BEB::OPTIMIZEDREQUEST"))
(unless (find-package "BEB::OPTIMIZEDRESPONSE")
  (make-package "BEB::OPTIMIZEDRESPONSE"))

(in-package "ROS")





(defclass beb::OptimizedRequest
  :super ros::object
  :slots (_ask ))

(defmethod beb::OptimizedRequest
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

(defclass beb::OptimizedResponse
  :super ros::object
  :slots (_done ))

(defmethod beb::OptimizedResponse
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

(defclass beb::Optimized
  :super ros::object
  :slots ())

(setf (get beb::Optimized :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::Optimized :datatype-) "beb/Optimized")
(setf (get beb::Optimized :request) beb::OptimizedRequest)
(setf (get beb::Optimized :response) beb::OptimizedResponse)

(defmethod beb::OptimizedRequest
  (:response () (instance beb::OptimizedResponse :init)))

(setf (get beb::OptimizedRequest :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::OptimizedRequest :datatype-) "beb/OptimizedRequest")
(setf (get beb::OptimizedRequest :definition-)
      "bool ask
---
float64[] done

")

(setf (get beb::OptimizedResponse :md5sum-) "44cbd9eed0dcaf0a9959d08fbba67dd6")
(setf (get beb::OptimizedResponse :datatype-) "beb/OptimizedResponse")
(setf (get beb::OptimizedResponse :definition-)
      "bool ask
---
float64[] done

")



(provide :beb/Optimized "44cbd9eed0dcaf0a9959d08fbba67dd6")


