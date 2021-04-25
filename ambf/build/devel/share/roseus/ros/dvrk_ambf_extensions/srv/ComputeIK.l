;; Auto-generated. Do not edit!


(when (boundp 'dvrk_ambf_extensions::ComputeIK)
  (if (not (find-package "DVRK_AMBF_EXTENSIONS"))
    (make-package "DVRK_AMBF_EXTENSIONS"))
  (shadow 'ComputeIK (find-package "DVRK_AMBF_EXTENSIONS")))
(unless (find-package "DVRK_AMBF_EXTENSIONS::COMPUTEIK")
  (make-package "DVRK_AMBF_EXTENSIONS::COMPUTEIK"))
(unless (find-package "DVRK_AMBF_EXTENSIONS::COMPUTEIKREQUEST")
  (make-package "DVRK_AMBF_EXTENSIONS::COMPUTEIKREQUEST"))
(unless (find-package "DVRK_AMBF_EXTENSIONS::COMPUTEIKRESPONSE")
  (make-package "DVRK_AMBF_EXTENSIONS::COMPUTEIKRESPONSE"))

(in-package "ROS")





(defclass dvrk_ambf_extensions::ComputeIKRequest
  :super ros::object
  :slots (_T_7_0 ))

(defmethod dvrk_ambf_extensions::ComputeIKRequest
  (:init
   (&key
    ((:T_7_0 __T_7_0) (instance dvrk_ambf_extensions::HomogenousTransform :init))
    )
   (send-super :init)
   (setq _T_7_0 __T_7_0)
   self)
  (:T_7_0
   (&rest __T_7_0)
   (if (keywordp (car __T_7_0))
       (send* _T_7_0 __T_7_0)
     (progn
       (if __T_7_0 (setq _T_7_0 (car __T_7_0)))
       _T_7_0)))
  (:serialization-length
   ()
   (+
    ;; dvrk_ambf_extensions/HomogenousTransform _T_7_0
    (send _T_7_0 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dvrk_ambf_extensions/HomogenousTransform _T_7_0
       (send _T_7_0 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dvrk_ambf_extensions/HomogenousTransform _T_7_0
     (send _T_7_0 :deserialize buf ptr-) (incf ptr- (send _T_7_0 :serialization-length))
   ;;
   self)
  )

(defclass dvrk_ambf_extensions::ComputeIKResponse
  :super ros::object
  :slots (_q_des ))

(defmethod dvrk_ambf_extensions::ComputeIKResponse
  (:init
   (&key
    ((:q_des __q_des) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _q_des __q_des)
   self)
  (:q_des
   (&optional __q_des)
   (if __q_des (setq _q_des __q_des)) _q_des)
  (:serialization-length
   ()
   (+
    ;; float64[] _q_des
    (* 8    (length _q_des)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _q_des
     (write-long (length _q_des) s)
     (dotimes (i (length _q_des))
       (sys::poke (elt _q_des i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _q_des
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q_des (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q_des i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass dvrk_ambf_extensions::ComputeIK
  :super ros::object
  :slots ())

(setf (get dvrk_ambf_extensions::ComputeIK :md5sum-) "8e9b7fd149152a96b552a17e15f68358")
(setf (get dvrk_ambf_extensions::ComputeIK :datatype-) "dvrk_ambf_extensions/ComputeIK")
(setf (get dvrk_ambf_extensions::ComputeIK :request) dvrk_ambf_extensions::ComputeIKRequest)
(setf (get dvrk_ambf_extensions::ComputeIK :response) dvrk_ambf_extensions::ComputeIKResponse)

(defmethod dvrk_ambf_extensions::ComputeIKRequest
  (:response () (instance dvrk_ambf_extensions::ComputeIKResponse :init)))

(setf (get dvrk_ambf_extensions::ComputeIKRequest :md5sum-) "8e9b7fd149152a96b552a17e15f68358")
(setf (get dvrk_ambf_extensions::ComputeIKRequest :datatype-) "dvrk_ambf_extensions/ComputeIKRequest")
(setf (get dvrk_ambf_extensions::ComputeIKRequest :definition-)
      "HomogenousTransform T_7_0

================================================================================
MSG: dvrk_ambf_extensions/HomogenousTransform
---
float64[] q_des
")

(setf (get dvrk_ambf_extensions::ComputeIKResponse :md5sum-) "8e9b7fd149152a96b552a17e15f68358")
(setf (get dvrk_ambf_extensions::ComputeIKResponse :datatype-) "dvrk_ambf_extensions/ComputeIKResponse")
(setf (get dvrk_ambf_extensions::ComputeIKResponse :definition-)
      "HomogenousTransform T_7_0

================================================================================
MSG: dvrk_ambf_extensions/HomogenousTransform
---
float64[] q_des
")



(provide :dvrk_ambf_extensions/ComputeIK "8e9b7fd149152a96b552a17e15f68358")


