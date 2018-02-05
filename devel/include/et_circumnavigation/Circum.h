// Generated by gencpp from file et_circumnavigation/Circum.msg
// DO NOT EDIT!


#ifndef ET_CIRCUMNAVIGATION_MESSAGE_CIRCUM_H
#define ET_CIRCUMNAVIGATION_MESSAGE_CIRCUM_H

#include <ros/service_traits.h>


#include <et_circumnavigation/CircumRequest.h>
#include <et_circumnavigation/CircumResponse.h>


namespace et_circumnavigation
{

struct Circum
{

typedef CircumRequest Request;
typedef CircumResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Circum
} // namespace et_circumnavigation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::et_circumnavigation::Circum > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::et_circumnavigation::Circum&) { return value(); }
};

template<>
struct DataType< ::et_circumnavigation::Circum > {
  static const char* value()
  {
    return "et_circumnavigation/Circum";
  }

  static const char* value(const ::et_circumnavigation::Circum&) { return value(); }
};


// service_traits::MD5Sum< ::et_circumnavigation::CircumRequest> should match 
// service_traits::MD5Sum< ::et_circumnavigation::Circum > 
template<>
struct MD5Sum< ::et_circumnavigation::CircumRequest>
{
  static const char* value()
  {
    return MD5Sum< ::et_circumnavigation::Circum >::value();
  }
  static const char* value(const ::et_circumnavigation::CircumRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::et_circumnavigation::CircumRequest> should match 
// service_traits::DataType< ::et_circumnavigation::Circum > 
template<>
struct DataType< ::et_circumnavigation::CircumRequest>
{
  static const char* value()
  {
    return DataType< ::et_circumnavigation::Circum >::value();
  }
  static const char* value(const ::et_circumnavigation::CircumRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::et_circumnavigation::CircumResponse> should match 
// service_traits::MD5Sum< ::et_circumnavigation::Circum > 
template<>
struct MD5Sum< ::et_circumnavigation::CircumResponse>
{
  static const char* value()
  {
    return MD5Sum< ::et_circumnavigation::Circum >::value();
  }
  static const char* value(const ::et_circumnavigation::CircumResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::et_circumnavigation::CircumResponse> should match 
// service_traits::DataType< ::et_circumnavigation::Circum > 
template<>
struct DataType< ::et_circumnavigation::CircumResponse>
{
  static const char* value()
  {
    return DataType< ::et_circumnavigation::Circum >::value();
  }
  static const char* value(const ::et_circumnavigation::CircumResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ET_CIRCUMNAVIGATION_MESSAGE_CIRCUM_H
