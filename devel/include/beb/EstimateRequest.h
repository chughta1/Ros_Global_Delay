// Generated by gencpp from file beb/EstimateRequest.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_ESTIMATEREQUEST_H
#define BEB_MESSAGE_ESTIMATEREQUEST_H


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
struct EstimateRequest_
{
  typedef EstimateRequest_<ContainerAllocator> Type;

  EstimateRequest_()
    : askEstimate(false)  {
    }
  EstimateRequest_(const ContainerAllocator& _alloc)
    : askEstimate(false)  {
  (void)_alloc;
    }



   typedef uint8_t _askEstimate_type;
  _askEstimate_type askEstimate;





  typedef boost::shared_ptr< ::beb::EstimateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::EstimateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct EstimateRequest_

typedef ::beb::EstimateRequest_<std::allocator<void> > EstimateRequest;

typedef boost::shared_ptr< ::beb::EstimateRequest > EstimateRequestPtr;
typedef boost::shared_ptr< ::beb::EstimateRequest const> EstimateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::EstimateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::EstimateRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beb::EstimateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::EstimateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::EstimateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::EstimateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::EstimateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::EstimateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::EstimateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4f3e04f95bcc311325cd43eeca0983f4";
  }

  static const char* value(const ::beb::EstimateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4f3e04f95bcc3113ULL;
  static const uint64_t static_value2 = 0x25cd43eeca0983f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::EstimateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/EstimateRequest";
  }

  static const char* value(const ::beb::EstimateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::EstimateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool askEstimate\n\
";
  }

  static const char* value(const ::beb::EstimateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::EstimateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.askEstimate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EstimateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::EstimateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::EstimateRequest_<ContainerAllocator>& v)
  {
    s << indent << "askEstimate: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.askEstimate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_ESTIMATEREQUEST_H
