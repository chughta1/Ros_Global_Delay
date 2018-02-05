// Generated by gencpp from file geomtwo/Twist.msg
// DO NOT EDIT!


#ifndef GEOMTWO_MESSAGE_TWIST_H
#define GEOMTWO_MESSAGE_TWIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geomtwo/Vector.h>

namespace geomtwo
{
template <class ContainerAllocator>
struct Twist_
{
  typedef Twist_<ContainerAllocator> Type;

  Twist_()
    : linear()
    , angular(0.0)  {
    }
  Twist_(const ContainerAllocator& _alloc)
    : linear(_alloc)
    , angular(0.0)  {
  (void)_alloc;
    }



   typedef  ::geomtwo::Vector_<ContainerAllocator>  _linear_type;
  _linear_type linear;

   typedef double _angular_type;
  _angular_type angular;




  typedef boost::shared_ptr< ::geomtwo::Twist_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geomtwo::Twist_<ContainerAllocator> const> ConstPtr;

}; // struct Twist_

typedef ::geomtwo::Twist_<std::allocator<void> > Twist;

typedef boost::shared_ptr< ::geomtwo::Twist > TwistPtr;
typedef boost::shared_ptr< ::geomtwo::Twist const> TwistConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geomtwo::Twist_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geomtwo::Twist_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace geomtwo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geomtwo': ['/home/chuggi/catkin_ws/src/geomtwo/msg', '/home/chuggi/catkin_ws/src/geomtwo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::geomtwo::Twist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geomtwo::Twist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geomtwo::Twist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geomtwo::Twist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geomtwo::Twist_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geomtwo::Twist_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geomtwo::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e220fd6a55863b5eec21b2aa462260f5";
  }

  static const char* value(const ::geomtwo::Twist_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe220fd6a55863b5eULL;
  static const uint64_t static_value2 = 0xec21b2aa462260f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::geomtwo::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geomtwo/Twist";
  }

  static const char* value(const ::geomtwo::Twist_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geomtwo::Twist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Vector linear\n\
float64 angular\n\
\n\
================================================================================\n\
MSG: geomtwo/Vector\n\
float64 x\n\
float64 y\n\
";
  }

  static const char* value(const ::geomtwo::Twist_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geomtwo::Twist_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Twist_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geomtwo::Twist_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geomtwo::Twist_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    s << std::endl;
    Printer< ::geomtwo::Vector_<ContainerAllocator> >::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    Printer<double>::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOMTWO_MESSAGE_TWIST_H
