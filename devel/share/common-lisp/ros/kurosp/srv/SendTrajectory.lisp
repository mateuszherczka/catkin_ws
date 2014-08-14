; Auto-generated. Do not edit!


(cl:in-package kurosp-srv)


;//! \htmlinclude SendTrajectory-request.msg.html

(cl:defclass <SendTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type kurosp-msg:Trajectory
    :initform (cl:make-instance 'kurosp-msg:Trajectory)))
)

(cl:defclass SendTrajectory-request (<SendTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kurosp-srv:<SendTrajectory-request> is deprecated: use kurosp-srv:SendTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <SendTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kurosp-srv:trajectory-val is deprecated.  Use kurosp-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendTrajectory-request>) ostream)
  "Serializes a message object of type '<SendTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendTrajectory-request>) istream)
  "Deserializes a message object of type '<SendTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendTrajectory-request>)))
  "Returns string type for a service object of type '<SendTrajectory-request>"
  "kurosp/SendTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendTrajectory-request)))
  "Returns string type for a service object of type 'SendTrajectory-request"
  "kurosp/SendTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendTrajectory-request>)))
  "Returns md5sum for a message object of type '<SendTrajectory-request>"
  "a869aa137664163ea9fbb56cdd307123")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendTrajectory-request)))
  "Returns md5sum for a message object of type 'SendTrajectory-request"
  "a869aa137664163ea9fbb56cdd307123")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendTrajectory-request>)))
  "Returns full string definition for message of type '<SendTrajectory-request>"
  (cl:format cl:nil "Trajectory trajectory~%~%================================================================================~%MSG: kurosp/Trajectory~%Info info~%Frame[] frames~%~%================================================================================~%MSG: kurosp/Info~%uint8 response_mode~%uint32 response_ms~%uint32 traj_id~%bool run~%uint32 vel~%uint32 tol~%uint8 frame_type~%~%================================================================================~%MSG: kurosp/Frame~%geometry_msgs/Point position~%Ypr orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: kurosp/Ypr~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendTrajectory-request)))
  "Returns full string definition for message of type 'SendTrajectory-request"
  (cl:format cl:nil "Trajectory trajectory~%~%================================================================================~%MSG: kurosp/Trajectory~%Info info~%Frame[] frames~%~%================================================================================~%MSG: kurosp/Info~%uint8 response_mode~%uint32 response_ms~%uint32 traj_id~%bool run~%uint32 vel~%uint32 tol~%uint8 frame_type~%~%================================================================================~%MSG: kurosp/Frame~%geometry_msgs/Point position~%Ypr orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: kurosp/Ypr~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendTrajectory-request
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude SendTrajectory-response.msg.html

(cl:defclass <SendTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendTrajectory-response (<SendTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kurosp-srv:<SendTrajectory-response> is deprecated: use kurosp-srv:SendTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SendTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kurosp-srv:success-val is deprecated.  Use kurosp-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendTrajectory-response>) ostream)
  "Serializes a message object of type '<SendTrajectory-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendTrajectory-response>) istream)
  "Deserializes a message object of type '<SendTrajectory-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendTrajectory-response>)))
  "Returns string type for a service object of type '<SendTrajectory-response>"
  "kurosp/SendTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendTrajectory-response)))
  "Returns string type for a service object of type 'SendTrajectory-response"
  "kurosp/SendTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendTrajectory-response>)))
  "Returns md5sum for a message object of type '<SendTrajectory-response>"
  "a869aa137664163ea9fbb56cdd307123")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendTrajectory-response)))
  "Returns md5sum for a message object of type 'SendTrajectory-response"
  "a869aa137664163ea9fbb56cdd307123")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendTrajectory-response>)))
  "Returns full string definition for message of type '<SendTrajectory-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendTrajectory-response)))
  "Returns full string definition for message of type 'SendTrajectory-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendTrajectory-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendTrajectory-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendTrajectory)))
  'SendTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendTrajectory)))
  'SendTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendTrajectory)))
  "Returns string type for a service object of type '<SendTrajectory>"
  "kurosp/SendTrajectory")