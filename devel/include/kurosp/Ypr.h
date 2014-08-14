/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/mh/catkin_ws/src/kurosp/msg/Ypr.msg
 *
 */


#ifndef KUROSP_MESSAGE_YPR_H
#define KUROSP_MESSAGE_YPR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kurosp
{
template <class ContainerAllocator>
struct Ypr_
{
  typedef Ypr_<ContainerAllocator> Type;

  Ypr_()
    : yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
    }
  Ypr_(const ContainerAllocator& _alloc)
    : yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
    }



   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _roll_type;
  _roll_type roll;




  typedef boost::shared_ptr< ::kurosp::Ypr_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kurosp::Ypr_<ContainerAllocator> const> ConstPtr;

}; // struct Ypr_

typedef ::kurosp::Ypr_<std::allocator<void> > Ypr;

typedef boost::shared_ptr< ::kurosp::Ypr > YprPtr;
typedef boost::shared_ptr< ::kurosp::Ypr const> YprConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kurosp::Ypr_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kurosp::Ypr_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kurosp

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'kurosp': ['/home/mh/catkin_ws/src/kurosp/msg'], 'trajectory_msgs': ['/opt/ros/indigo/share/trajectory_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kurosp::Ypr_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kurosp::Ypr_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kurosp::Ypr_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kurosp::Ypr_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kurosp::Ypr_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kurosp::Ypr_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kurosp::Ypr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6483fb20acb1cba981c486a35a1bdbd";
  }

  static const char* value(const ::kurosp::Ypr_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6483fb20acb1cbaULL;
  static const uint64_t static_value2 = 0x981c486a35a1bdbdULL;
};

template<class ContainerAllocator>
struct DataType< ::kurosp::Ypr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kurosp/Ypr";
  }

  static const char* value(const ::kurosp::Ypr_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kurosp::Ypr_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 yaw\n\
float64 pitch\n\
float64 roll\n\
";
  }

  static const char* value(const ::kurosp::Ypr_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kurosp::Ypr_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.roll);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Ypr_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kurosp::Ypr_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kurosp::Ypr_<ContainerAllocator>& v)
  {
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUROSP_MESSAGE_YPR_H