// Generated by gencpp from file beb/CompleteRequest.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_COMPLETEREQUEST_H
#define BEB_MESSAGE_COMPLETEREQUEST_H


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
struct CompleteRequest_
{
  typedef CompleteRequest_<ContainerAllocator> Type;

  CompleteRequest_()
    : check(false)  {
    }
  CompleteRequest_(const ContainerAllocator& _alloc)
    : check(false)  {
  (void)_alloc;
    }



   typedef uint8_t _check_type;
  _check_type check;




  typedef boost::shared_ptr< ::beb::CompleteRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::CompleteRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CompleteRequest_

typedef ::beb::CompleteRequest_<std::allocator<void> > CompleteRequest;

typedef boost::shared_ptr< ::beb::CompleteRequest > CompleteRequestPtr;
typedef boost::shared_ptr< ::beb::CompleteRequest const> CompleteRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::CompleteRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::CompleteRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace beb

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'bebop_msgs': ['/home/chuggi/catkin_ws/src/bebop_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::beb::CompleteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::CompleteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::CompleteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::CompleteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::CompleteRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::CompleteRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::CompleteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c5df00fea9d1f39520fa0345cbde1b26";
  }

  static const char* value(const ::beb::CompleteRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc5df00fea9d1f395ULL;
  static const uint64_t static_value2 = 0x20fa0345cbde1b26ULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::CompleteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/CompleteRequest";
  }

  static const char* value(const ::beb::CompleteRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::CompleteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool check\n\
";
  }

  static const char* value(const ::beb::CompleteRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::CompleteRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.check);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CompleteRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::CompleteRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::CompleteRequest_<ContainerAllocator>& v)
  {
    s << indent << "check: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.check);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_COMPLETEREQUEST_H