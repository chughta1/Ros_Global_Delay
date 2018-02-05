// Generated by gencpp from file geomtwo/Pose.msg
// DO NOT EDIT!


#ifndef GEOMTWO_MESSAGE_POSE_H
#define GEOMTWO_MESSAGE_POSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geomtwo/Point.h>
#include <geomtwo/Versor.h>

namespace geomtwo
{
template <class ContainerAllocator>
struct Pose_
{
  typedef Pose_<ContainerAllocator> Type;

  Pose_()
    : position()
    , orientation()  {
    }
  Pose_(const ContainerAllocator& _alloc)
    : position(_alloc)
    , orientation(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geomtwo::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef  ::geomtwo::Versor_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;




  typedef boost::shared_ptr< ::geomtwo::Pose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::geomtwo::Pose_<ContainerAllocator> const> ConstPtr;

}; // struct Pose_

typedef ::geomtwo::Pose_<std::allocator<void> > Pose;

typedef boost::shared_ptr< ::geomtwo::Pose > PosePtr;
typedef boost::shared_ptr< ::geomtwo::Pose const> PoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::geomtwo::Pose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::geomtwo::Pose_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::geomtwo::Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::geomtwo::Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geomtwo::Pose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::geomtwo::Pose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geomtwo::Pose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::geomtwo::Pose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::geomtwo::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b953365f8a2589dfd0aee87e64ea032";
  }

  static const char* value(const ::geomtwo::Pose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b953365f8a2589dULL;
  static const uint64_t static_value2 = 0xfd0aee87e64ea032ULL;
};

template<class ContainerAllocator>
struct DataType< ::geomtwo::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geomtwo/Pose";
  }

  static const char* value(const ::geomtwo::Pose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::geomtwo::Pose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Point position\n\
Versor orientation\n\
\n\
================================================================================\n\
MSG: geomtwo/Point\n\
float64 x\n\
float64 y\n\
\n\
================================================================================\n\
MSG: geomtwo/Versor\n\
float64 x\n\
float64 y\n\
";
  }

  static const char* value(const ::geomtwo::Pose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::geomtwo::Pose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::geomtwo::Pose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::geomtwo::Pose_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geomtwo::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geomtwo::Versor_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GEOMTWO_MESSAGE_POSE_H