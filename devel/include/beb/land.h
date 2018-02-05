// Generated by gencpp from file beb/land.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_LAND_H
#define BEB_MESSAGE_LAND_H

#include <ros/service_traits.h>


#include <beb/landRequest.h>
#include <beb/landResponse.h>


namespace beb
{

struct land
{

typedef landRequest Request;
typedef landResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct land
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::land > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::beb::land&) { return value(); }
};

template<>
struct DataType< ::beb::land > {
  static const char* value()
  {
    return "beb/land";
  }

  static const char* value(const ::beb::land&) { return value(); }
};


// service_traits::MD5Sum< ::beb::landRequest> should match 
// service_traits::MD5Sum< ::beb::land > 
template<>
struct MD5Sum< ::beb::landRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::land >::value();
  }
  static const char* value(const ::beb::landRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::landRequest> should match 
// service_traits::DataType< ::beb::land > 
template<>
struct DataType< ::beb::landRequest>
{
  static const char* value()
  {
    return DataType< ::beb::land >::value();
  }
  static const char* value(const ::beb::landRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::landResponse> should match 
// service_traits::MD5Sum< ::beb::land > 
template<>
struct MD5Sum< ::beb::landResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::land >::value();
  }
  static const char* value(const ::beb::landResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::landResponse> should match 
// service_traits::DataType< ::beb::land > 
template<>
struct DataType< ::beb::landResponse>
{
  static const char* value()
  {
    return DataType< ::beb::land >::value();
  }
  static const char* value(const ::beb::landResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_LAND_H