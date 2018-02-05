// Generated by gencpp from file beb/Estimate.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_ESTIMATE_H
#define BEB_MESSAGE_ESTIMATE_H

#include <ros/service_traits.h>


#include <beb/EstimateRequest.h>
#include <beb/EstimateResponse.h>


namespace beb
{

struct Estimate
{

typedef EstimateRequest Request;
typedef EstimateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Estimate
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::Estimate > {
  static const char* value()
  {
    return "8f3e47450b5620c15f2f584c2ee92cf6";
  }

  static const char* value(const ::beb::Estimate&) { return value(); }
};

template<>
struct DataType< ::beb::Estimate > {
  static const char* value()
  {
    return "beb/Estimate";
  }

  static const char* value(const ::beb::Estimate&) { return value(); }
};


// service_traits::MD5Sum< ::beb::EstimateRequest> should match 
// service_traits::MD5Sum< ::beb::Estimate > 
template<>
struct MD5Sum< ::beb::EstimateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::Estimate >::value();
  }
  static const char* value(const ::beb::EstimateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::EstimateRequest> should match 
// service_traits::DataType< ::beb::Estimate > 
template<>
struct DataType< ::beb::EstimateRequest>
{
  static const char* value()
  {
    return DataType< ::beb::Estimate >::value();
  }
  static const char* value(const ::beb::EstimateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::EstimateResponse> should match 
// service_traits::MD5Sum< ::beb::Estimate > 
template<>
struct MD5Sum< ::beb::EstimateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::Estimate >::value();
  }
  static const char* value(const ::beb::EstimateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::EstimateResponse> should match 
// service_traits::DataType< ::beb::Estimate > 
template<>
struct DataType< ::beb::EstimateResponse>
{
  static const char* value()
  {
    return DataType< ::beb::Estimate >::value();
  }
  static const char* value(const ::beb::EstimateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_ESTIMATE_H
