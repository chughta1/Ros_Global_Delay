// Generated by gencpp from file beb/OptimizedRequest.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_OPTIMIZEDREQUEST_H
#define BEB_MESSAGE_OPTIMIZEDREQUEST_H


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
struct OptimizedRequest_
{
  typedef OptimizedRequest_<ContainerAllocator> Type;

  OptimizedRequest_()
    : ask(false)  {
    }
  OptimizedRequest_(const ContainerAllocator& _alloc)
    : ask(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ask_type;
  _ask_type ask;




  typedef boost::shared_ptr< ::beb::OptimizedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::OptimizedRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OptimizedRequest_

typedef ::beb::OptimizedRequest_<std::allocator<void> > OptimizedRequest;

typedef boost::shared_ptr< ::beb::OptimizedRequest > OptimizedRequestPtr;
typedef boost::shared_ptr< ::beb::OptimizedRequest const> OptimizedRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::OptimizedRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::OptimizedRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beb::OptimizedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::OptimizedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::OptimizedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::OptimizedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::OptimizedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::OptimizedRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::OptimizedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fbe9700edfca44c5eefb040d9b60f6d6";
  }

  static const char* value(const ::beb::OptimizedRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfbe9700edfca44c5ULL;
  static const uint64_t static_value2 = 0xeefb040d9b60f6d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::OptimizedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/OptimizedRequest";
  }

  static const char* value(const ::beb::OptimizedRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::OptimizedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ask\n\
";
  }

  static const char* value(const ::beb::OptimizedRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::OptimizedRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OptimizedRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::OptimizedRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::OptimizedRequest_<ContainerAllocator>& v)
  {
    s << indent << "ask: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_OPTIMIZEDREQUEST_H
