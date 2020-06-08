; Auto-generated. Do not edit!


(cl:in-package add_markers-srv)


;//! \htmlinclude marker_service-request.msg.html

(cl:defclass <marker_service-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (show_marker
    :reader show_marker
    :initarg :show_marker
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass marker_service-request (<marker_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <marker_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'marker_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<marker_service-request> is deprecated: use add_markers-srv:marker_service-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <marker_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:x-val is deprecated.  Use add_markers-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <marker_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:y-val is deprecated.  Use add_markers-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'show_marker-val :lambda-list '(m))
(cl:defmethod show_marker-val ((m <marker_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:show_marker-val is deprecated.  Use add_markers-srv:show_marker instead.")
  (show_marker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <marker_service-request>) ostream)
  "Serializes a message object of type '<marker_service-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'show_marker) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <marker_service-request>) istream)
  "Deserializes a message object of type '<marker_service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'show_marker) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<marker_service-request>)))
  "Returns string type for a service object of type '<marker_service-request>"
  "add_markers/marker_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'marker_service-request)))
  "Returns string type for a service object of type 'marker_service-request"
  "add_markers/marker_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<marker_service-request>)))
  "Returns md5sum for a message object of type '<marker_service-request>"
  "e5cce09bb285d3db26a9c9e57cf16f60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'marker_service-request)))
  "Returns md5sum for a message object of type 'marker_service-request"
  "e5cce09bb285d3db26a9c9e57cf16f60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<marker_service-request>)))
  "Returns full string definition for message of type '<marker_service-request>"
  (cl:format cl:nil "float64 x~%float64 y~%bool show_marker~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'marker_service-request)))
  "Returns full string definition for message of type 'marker_service-request"
  (cl:format cl:nil "float64 x~%float64 y~%bool show_marker~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <marker_service-request>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <marker_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'marker_service-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':show_marker (show_marker msg))
))
;//! \htmlinclude marker_service-response.msg.html

(cl:defclass <marker_service-response> (roslisp-msg-protocol:ros-message)
  ((marker_updated
    :reader marker_updated
    :initarg :marker_updated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass marker_service-response (<marker_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <marker_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'marker_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name add_markers-srv:<marker_service-response> is deprecated: use add_markers-srv:marker_service-response instead.")))

(cl:ensure-generic-function 'marker_updated-val :lambda-list '(m))
(cl:defmethod marker_updated-val ((m <marker_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader add_markers-srv:marker_updated-val is deprecated.  Use add_markers-srv:marker_updated instead.")
  (marker_updated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <marker_service-response>) ostream)
  "Serializes a message object of type '<marker_service-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'marker_updated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <marker_service-response>) istream)
  "Deserializes a message object of type '<marker_service-response>"
    (cl:setf (cl:slot-value msg 'marker_updated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<marker_service-response>)))
  "Returns string type for a service object of type '<marker_service-response>"
  "add_markers/marker_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'marker_service-response)))
  "Returns string type for a service object of type 'marker_service-response"
  "add_markers/marker_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<marker_service-response>)))
  "Returns md5sum for a message object of type '<marker_service-response>"
  "e5cce09bb285d3db26a9c9e57cf16f60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'marker_service-response)))
  "Returns md5sum for a message object of type 'marker_service-response"
  "e5cce09bb285d3db26a9c9e57cf16f60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<marker_service-response>)))
  "Returns full string definition for message of type '<marker_service-response>"
  (cl:format cl:nil "~%bool marker_updated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'marker_service-response)))
  "Returns full string definition for message of type 'marker_service-response"
  (cl:format cl:nil "~%bool marker_updated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <marker_service-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <marker_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'marker_service-response
    (cl:cons ':marker_updated (marker_updated msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'marker_service)))
  'marker_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'marker_service)))
  'marker_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'marker_service)))
  "Returns string type for a service object of type '<marker_service>"
  "add_markers/marker_service")