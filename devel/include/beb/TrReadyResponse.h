// Generated by gencpp from file beb/TrReadyResponse.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_TRREADYRESPONSE_H
#define BEB_MESSAGE_TRREADYRESPONSE_H


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
struct TrReadyResponse_
{
  typedef TrReadyResponse_<ContainerAllocator> Type;

  TrReadyResponse_()
    : resTrain(false)  {
    }
  TrReadyResponse_(const ContainerAllocator& _alloc)
    : resTrain(false)  {
  (void)_alloc;
    }



   typedef uint8_t _resTrain_type;
  _resTrain_type resTrain;





  typedef boost::shared_ptr< ::beb::TrReadyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::TrReadyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TrReadyResponse_

typedef ::beb::TrReadyResponse_<std::allocator<void> > TrReadyResponse;

typedef boost::shared_ptr< ::beb::TrReadyResponse > TrReadyResponsePtr;
typedef boost::shared_ptr< ::beb::TrReadyResponse const> TrReadyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::TrReadyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::TrReadyResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beb::TrReadyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::TrReadyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::TrReadyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::TrReadyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::TrReadyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::TrReadyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::TrReadyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75e0701c498f543f4afab6d19f049f1a";
  }

  static const char* value(const ::beb::TrReadyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75e0701c498f543fULL;
  static const uint64_t static_value2 = 0x4afab6d19f049f1aULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::TrReadyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/TrReadyResponse";
  }

  static const char* value(const ::beb::TrReadyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::TrReadyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool resTrain\n\
\n\
";
  }

  static const char* value(const ::beb::TrReadyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::TrReadyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.resTrain);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrReadyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::TrReadyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::TrReadyResponse_<ContainerAllocator>& v)
  {
    s << indent << "resTrain: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.resTrain);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_TRREADYRESPONSE_H
