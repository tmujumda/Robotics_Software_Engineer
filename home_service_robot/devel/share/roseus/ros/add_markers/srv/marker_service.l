;; Auto-generated. Do not edit!


(when (boundp 'add_markers::marker_service)
  (if (not (find-package "ADD_MARKERS"))
    (make-package "ADD_MARKERS"))
  (shadow 'marker_service (find-package "ADD_MARKERS")))
(unless (find-package "ADD_MARKERS::MARKER_SERVICE")
  (make-package "ADD_MARKERS::MARKER_SERVICE"))
(unless (find-package "ADD_MARKERS::MARKER_SERVICEREQUEST")
  (make-package "ADD_MARKERS::MARKER_SERVICEREQUEST"))
(unless (find-package "ADD_MARKERS::MARKER_SERVICERESPONSE")
  (make-package "ADD_MARKERS::MARKER_SERVICERESPONSE"))

(in-package "ROS")





(defclass add_markers::marker_serviceRequest
  :super ros::object
  :slots (_x _y _show_marker ))

(defmethod add_markers::marker_serviceRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:show_marker __show_marker) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _show_marker __show_marker)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:show_marker
   (&optional __show_marker)
   (if __show_marker (setq _show_marker __show_marker)) _show_marker)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; bool _show_marker
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _show_marker
       (if _show_marker (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _show_marker
     (setq _show_marker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass add_markers::marker_serviceResponse
  :super ros::object
  :slots (_marker_updated ))

(defmethod add_markers::marker_serviceResponse
  (:init
   (&key
    ((:marker_updated __marker_updated) nil)
    )
   (send-super :init)
   (setq _marker_updated __marker_updated)
   self)
  (:marker_updated
   (&optional __marker_updated)
   (if __marker_updated (setq _marker_updated __marker_updated)) _marker_updated)
  (:serialization-length
   ()
   (+
    ;; bool _marker_updated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _marker_updated
       (if _marker_updated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _marker_updated
     (setq _marker_updated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass add_markers::marker_service
  :super ros::object
  :slots ())

(setf (get add_markers::marker_service :md5sum-) "e5cce09bb285d3db26a9c9e57cf16f60")
(setf (get add_markers::marker_service :datatype-) "add_markers/marker_service")
(setf (get add_markers::marker_service :request) add_markers::marker_serviceRequest)
(setf (get add_markers::marker_service :response) add_markers::marker_serviceResponse)

(defmethod add_markers::marker_serviceRequest
  (:response () (instance add_markers::marker_serviceResponse :init)))

(setf (get add_markers::marker_serviceRequest :md5sum-) "e5cce09bb285d3db26a9c9e57cf16f60")
(setf (get add_markers::marker_serviceRequest :datatype-) "add_markers/marker_serviceRequest")
(setf (get add_markers::marker_serviceRequest :definition-)
      "float64 x
float64 y
bool show_marker

---

bool marker_updated

")

(setf (get add_markers::marker_serviceResponse :md5sum-) "e5cce09bb285d3db26a9c9e57cf16f60")
(setf (get add_markers::marker_serviceResponse :datatype-) "add_markers/marker_serviceResponse")
(setf (get add_markers::marker_serviceResponse :definition-)
      "float64 x
float64 y
bool show_marker

---

bool marker_updated

")



(provide :add_markers/marker_service "e5cce09bb285d3db26a9c9e57cf16f60")


