// Generated by gencpp from file beb/CheckLearnResponse.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_CHECKLEARNRESPONSE_H
#define BEB_MESSAGE_CHECKLEARNRESPONSE_H


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
struct CheckLearnResponse_
{
  typedef CheckLearnResponse_<ContainerAllocator> Type;

  CheckLearnResponse_()
    : LearnConf(false)  {
    }
  CheckLearnResponse_(const ContainerAllocator& _alloc)
    : LearnConf(false)  {
  (void)_alloc;
    }



   typedef uint8_t _LearnConf_type;
  _LearnConf_type LearnConf;




  typedef boost::shared_ptr< ::beb::CheckLearnResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beb::CheckLearnResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CheckLearnResponse_

typedef ::beb::CheckLearnResponse_<std::allocator<void> > CheckLearnResponse;

typedef boost::shared_ptr< ::beb::CheckLearnResponse > CheckLearnResponsePtr;
typedef boost::shared_ptr< ::beb::CheckLearnResponse const> CheckLearnResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beb::CheckLearnResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beb::CheckLearnResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::beb::CheckLearnResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beb::CheckLearnResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::CheckLearnResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beb::CheckLearnResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::CheckLearnResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beb::CheckLearnResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beb::CheckLearnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "628b9d6a3c360f58582c93f2715ade47";
  }

  static const char* value(const ::beb::CheckLearnResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x628b9d6a3c360f58ULL;
  static const uint64_t static_value2 = 0x582c93f2715ade47ULL;
};

template<class ContainerAllocator>
struct DataType< ::beb::CheckLearnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beb/CheckLearnResponse";
  }

  static const char* value(const ::beb::CheckLearnResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beb::CheckLearnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool LearnConf\n\
\n\
";
  }

  static const char* value(const ::beb::CheckLearnResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beb::CheckLearnResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.LearnConf);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CheckLearnResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beb::CheckLearnResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beb::CheckLearnResponse_<ContainerAllocator>& v)
  {
    s << indent << "LearnConf: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.LearnConf);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEB_MESSAGE_CHECKLEARNRESPONSE_H