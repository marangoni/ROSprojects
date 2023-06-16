;; Auto-generated. Do not edit!


(when (boundp 'jkprobot::Ardubot)
  (if (not (find-package "JKPROBOT"))
    (make-package "JKPROBOT"))
  (shadow 'Ardubot (find-package "JKPROBOT")))
(unless (find-package "JKPROBOT::ARDUBOT")
  (make-package "JKPROBOT::ARDUBOT"))

(in-package "ROS")
;;//! \htmlinclude Ardubot.msg.html


(defclass jkprobot::Ardubot
  :super ros::object
  :slots (_base_deg _waist_deg _shoulder_deg ))

(defmethod jkprobot::Ardubot
  (:init
   (&key
    ((:base_deg __base_deg) 0)
    ((:waist_deg __waist_deg) 0)
    ((:shoulder_deg __shoulder_deg) 0)
    )
   (send-super :init)
   (setq _base_deg (round __base_deg))
   (setq _waist_deg (round __waist_deg))
   (setq _shoulder_deg (round __shoulder_deg))
   self)
  (:base_deg
   (&optional __base_deg)
   (if __base_deg (setq _base_deg __base_deg)) _base_deg)
  (:waist_deg
   (&optional __waist_deg)
   (if __waist_deg (setq _waist_deg __waist_deg)) _waist_deg)
  (:shoulder_deg
   (&optional __shoulder_deg)
   (if __shoulder_deg (setq _shoulder_deg __shoulder_deg)) _shoulder_deg)
  (:serialization-length
   ()
   (+
    ;; int32 _base_deg
    4
    ;; int32 _waist_deg
    4
    ;; int32 _shoulder_deg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _base_deg
       (write-long _base_deg s)
     ;; int32 _waist_deg
       (write-long _waist_deg s)
     ;; int32 _shoulder_deg
       (write-long _shoulder_deg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _base_deg
     (setq _base_deg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _waist_deg
     (setq _waist_deg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _shoulder_deg
     (setq _shoulder_deg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jkprobot::Ardubot :md5sum-) "25c6d417204f56ff08c29e46dee18838")
(setf (get jkprobot::Ardubot :datatype-) "jkprobot/Ardubot")
(setf (get jkprobot::Ardubot :definition-)
      "int32 base_deg
int32 waist_deg
int32 shoulder_deg
")



(provide :jkprobot/Ardubot "25c6d417204f56ff08c29e46dee18838")


