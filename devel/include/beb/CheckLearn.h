// Generated by gencpp from file beb/CheckLearn.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_CHECKLEARN_H
#define BEB_MESSAGE_CHECKLEARN_H

#include <ros/service_traits.h>


#include <beb/CheckLearnRequest.h>
#include <beb/CheckLearnResponse.h>


namespace beb
{

struct CheckLearn
{

typedef CheckLearnRequest Request;
typedef CheckLearnResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CheckLearn
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::CheckLearn > {
  static const char* value()
  {
    return "628b9d6a3c360f58582c93f2715ade47";
  }

  static const char* value(const ::beb::CheckLearn&) { return value(); }
};

template<>
struct DataType< ::beb::CheckLearn > {
  static const char* value()
  {
    return "beb/CheckLearn";
  }

  static const char* value(const ::beb::CheckLearn&) { return value(); }
};


// service_traits::MD5Sum< ::beb::CheckLearnRequest> should match 
// service_traits::MD5Sum< ::beb::CheckLearn > 
template<>
struct MD5Sum< ::beb::CheckLearnRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::CheckLearn >::value();
  }
  static const char* value(const ::beb::CheckLearnRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::CheckLearnRequest> should match 
// service_traits::DataType< ::beb::CheckLearn > 
template<>
struct DataType< ::beb::CheckLearnRequest>
{
  static const char* value()
  {
    return DataType< ::beb::CheckLearn >::value();
  }
  static const char* value(const ::beb::CheckLearnRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::CheckLearnResponse> should match 
// service_traits::MD5Sum< ::beb::CheckLearn > 
template<>
struct MD5Sum< ::beb::CheckLearnResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::CheckLearn >::value();
  }
  static const char* value(const ::beb::CheckLearnResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::CheckLearnResponse> should match 
// service_traits::DataType< ::beb::CheckLearn > 
template<>
struct DataType< ::beb::CheckLearnResponse>
{
  static const char* value()
  {
    return DataType< ::beb::CheckLearn >::value();
  }
  static const char* value(const ::beb::CheckLearnResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_CHECKLEARN_H
