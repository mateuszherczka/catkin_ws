; Auto-generated. Do not edit!


(cl:in-package kurosp-msg)


;//! \htmlinclude Frame.msg.html

(cl:defclass <Frame> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rotation
    :reader rotation
    :initarg :rotation
    :type kurosp-msg:Ypr
    :initform (cl:make-instance 'kurosp-msg:Ypr)))
)

(cl:defclass Frame (<Frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kurosp-msg:<Frame> is deprecated: use kurosp-msg:Frame instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kurosp-msg:position-val is deprecated.  Use kurosp-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kurosp-msg:rotation-val is deprecated.  Use kurosp-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frame>) ostream)
  "Serializes a message object of type '<Frame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frame>) istream)
  "Deserializes a message object of type '<Frame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frame>)))
  "Returns string type for a message object of type '<Frame>"
  "kurosp/Frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frame)))
  "Returns string type for a message object of type 'Frame"
  "kurosp/Frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frame>)))
  "Returns md5sum for a message object of type '<Frame>"
  "eb96e2c8f6de41c5ab37db56f4da0141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frame)))
  "Returns md5sum for a message object of type 'Frame"
  "eb96e2c8f6de41c5ab37db56f4da0141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frame>)))
  "Returns full string definition for message of type '<Frame>"
  (cl:format cl:nil "geometry_msgs/Point position~%Ypr rotation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: kurosp/Ypr~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frame)))
  "Returns full string definition for message of type 'Frame"
  (cl:format cl:nil "geometry_msgs/Point position~%Ypr rotation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: kurosp/Ypr~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frame>))
  "Converts a ROS message object to a list"
  (cl:list 'Frame
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
))
