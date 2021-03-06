// Generated by gencpp from file beb/path.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_PATH_H
#define BEB_MESSAGE_PATH_H

#include <ros/service_traits.h>


#include <beb/pathRequest.h>
#include <beb/pathResponse.h>


namespace beb
{

struct path
{

typedef pathRequest Request;
typedef pathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct path
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::path > {
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::beb::path&) { return value(); }
};

template<>
struct DataType< ::beb::path > {
  static const char* value()
  {
    return "beb/path";
  }

  static const char* value(const ::beb::path&) { return value(); }
};


// service_traits::MD5Sum< ::beb::pathRequest> should match 
// service_traits::MD5Sum< ::beb::path > 
template<>
struct MD5Sum< ::beb::pathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::path >::value();
  }
  static const char* value(const ::beb::pathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::pathRequest> should match 
// service_traits::DataType< ::beb::path > 
template<>
struct DataType< ::beb::pathRequest>
{
  static const char* value()
  {
    return DataType< ::beb::path >::value();
  }
  static const char* value(const ::beb::pathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::pathResponse> should match 
// service_traits::MD5Sum< ::beb::path > 
template<>
struct MD5Sum< ::beb::pathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::path >::value();
  }
  static const char* value(const ::beb::pathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::pathResponse> should match 
// service_traits::DataType< ::beb::path > 
template<>
struct DataType< ::beb::pathResponse>
{
  static const char* value()
  {
    return DataType< ::beb::path >::value();
  }
  static const char* value(const ::beb::pathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_PATH_H
