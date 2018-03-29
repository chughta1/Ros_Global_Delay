// Generated by gencpp from file beb/randomDelayResponse.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_RANDOMDELAYRESPONSE_H
#define BEB_MESSAGE_RANDOMDELAYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beb
{
template <class ContainerAllocator>
struct randomDelayResponse_
{
  typedef randomDelayResponse_<ContainerAllocator> Type;

  randomDelayResponse_()
    : sendDelay(0.0)  {
    }
  randomDelayResponse_(const ContainerAllocator& _alloc)
    : sendDelay(0.0)  {
  (void)_alloc;
    }



   typedef float _sendDelay_type;
  _sendDelay_type sendDelay;





  typedef boost::shared_ptr< ::beb::randomDelayResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::randomDelayResponse_<ContainerAllocator> const> ConstPtr;

}; // struct randomDelayResponse_

typedef ::beb::randomDelayResponse_<std::allocator<void> > randomDelayResponse;

typedef boost::shared_ptr< ::beb::randomDelayResponse > randomDelayResponsePtr;
typedef boost::shared_ptr< ::beb::randomDelayResponse const> randomDelayResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::randomDelayResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::randomDelayResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beb

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'bebop_msgs': ['/home/umar/catkin_ws/src/bebop_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beb::randomDelayResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::randomDelayResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::randomDelayResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::randomDelayResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::randomDelayResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::randomDelayResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::randomDelayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1aafacb4fcc138a2dbf78672cae4038a";
  }

  static const char* value(const ::beb::randomDelayResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1aafacb4fcc138a2ULL;
  static const uint64_t static_value2 = 0xdbf78672cae4038aULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::randomDelayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/randomDelayResponse";
  }

  static const char* value(const ::beb::randomDelayResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::randomDelayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 sendDelay\n\
\n\
";
  }

  static const char* value(const ::beb::randomDelayResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::randomDelayResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sendDelay);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct randomDelayResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::randomDelayResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::randomDelayResponse_<ContainerAllocator>& v)
  {
    s << indent << "sendDelay: ";
    Printer<float>::stream(s, indent + "  ", v.sendDelay);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_RANDOMDELAYRESPONSE_H
