;; Auto-generated. Do not edit!


(when (boundp 'dvrk_ambf_extensions::HomogenousTransform)
  (if (not (find-package "DVRK_AMBF_EXTENSIONS"))
    (make-package "DVRK_AMBF_EXTENSIONS"))
  (shadow 'HomogenousTransform (find-package "DVRK_AMBF_EXTENSIONS")))
(unless (find-package "DVRK_AMBF_EXTENSIONS::HOMOGENOUSTRANSFORM")
  (make-package "DVRK_AMBF_EXTENSIONS::HOMOGENOUSTRANSFORM"))

(in-package "ROS")
;;//! \htmlinclude HomogenousTransform.msg.html


(defclass dvrk_ambf_extensions::HomogenousTransform
  :super ros::object
  :slots (_data ))

(defmethod dvrk_ambf_extensions::HomogenousTransform
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get dvrk_ambf_extensions::HomogenousTransform :md5sum-) "788898178a3da2c3718461eecda8f714")
(setf (get dvrk_ambf_extensions::HomogenousTransform :datatype-) "dvrk_ambf_extensions/HomogenousTransform")
(setf (get dvrk_ambf_extensions::HomogenousTransform :definition-)
      "float64[] data
")



(provide :dvrk_ambf_extensions/HomogenousTransform "788898178a3da2c3718461eecda8f714")


