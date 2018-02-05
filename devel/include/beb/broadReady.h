// Generated by gencpp from file beb/broadReady.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_BROADREADY_H
#define BEB_MESSAGE_BROADREADY_H

#include <ros/service_traits.h>


#include <beb/broadReadyRequest.h>
#include <beb/broadReadyResponse.h>


namespace beb
{

struct broadReady
{

typedef broadReadyRequest Request;
typedef broadReadyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct broadReady
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::broadReady > {
  static const char* value()
  {
    return "a7ac84f4d9ccfe63fababeef70137cb0";
  }

  static const char* value(const ::beb::broadReady&) { return value(); }
};

template<>
struct DataType< ::beb::broadReady > {
  static const char* value()
  {
    return "beb/broadReady";
  }

  static const char* value(const ::beb::broadReady&) { return value(); }
};


// service_traits::MD5Sum< ::beb::broadReadyRequest> should match 
// service_traits::MD5Sum< ::beb::broadReady > 
template<>
struct MD5Sum< ::beb::broadReadyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::broadReady >::value();
  }
  static const char* value(const ::beb::broadReadyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::broadReadyRequest> should match 
// service_traits::DataType< ::beb::broadReady > 
template<>
struct DataType< ::beb::broadReadyRequest>
{
  static const char* value()
  {
    return DataType< ::beb::broadReady >::value();
  }
  static const char* value(const ::beb::broadReadyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::broadReadyResponse> should match 
// service_traits::MD5Sum< ::beb::broadReady > 
template<>
struct MD5Sum< ::beb::broadReadyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::broadReady >::value();
  }
  static const char* value(const ::beb::broadReadyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::broadReadyResponse> should match 
// service_traits::DataType< ::beb::broadReady > 
template<>
struct DataType< ::beb::broadReadyResponse>
{
  static const char* value()
  {
    return DataType< ::beb::broadReady >::value();
  }
  static const char* value(const ::beb::broadReadyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_BROADREADY_H
