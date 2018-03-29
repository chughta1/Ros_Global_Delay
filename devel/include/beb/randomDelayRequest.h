// Generated by gencpp from file beb/randomDelayRequest.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_RANDOMDELAYREQUEST_H
#define BEB_MESSAGE_RANDOMDELAYREQUEST_H


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
struct randomDelayRequest_
{
  typedef randomDelayRequest_<ContainerAllocator> Type;

  randomDelayRequest_()
    : askDelay(false)  {
    }
  randomDelayRequest_(const ContainerAllocator& _alloc)
    : askDelay(false)  {
  (void)_alloc;
    }



   typedef uint8_t _askDelay_type;
  _askDelay_type askDelay;





  typedef boost::shared_ptr< ::beb::randomDelayRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::randomDelayRequest_<ContainerAllocator> const> ConstPtr;

}; // struct randomDelayRequest_

typedef ::beb::randomDelayRequest_<std::allocator<void> > randomDelayRequest;

typedef boost::shared_ptr< ::beb::randomDelayRequest > randomDelayRequestPtr;
typedef boost::shared_ptr< ::beb::randomDelayRequest const> randomDelayRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::randomDelayRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::randomDelayRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beb::randomDelayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::randomDelayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::randomDelayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::randomDelayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::randomDelayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::randomDelayRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::randomDelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b89d0d1cac0180724212fce5135c0ced";
  }

  static const char* value(const ::beb::randomDelayRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb89d0d1cac018072ULL;
  static const uint64_t static_value2 = 0x4212fce5135c0cedULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::randomDelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/randomDelayRequest";
  }

  static const char* value(const ::beb::randomDelayRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::randomDelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool askDelay\n\
";
  }

  static const char* value(const ::beb::randomDelayRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::randomDelayRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.askDelay);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct randomDelayRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::randomDelayRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::randomDelayRequest_<ContainerAllocator>& v)
  {
    s << indent << "askDelay: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.askDelay);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_RANDOMDELAYREQUEST_H
