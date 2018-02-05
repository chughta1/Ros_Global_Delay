// Generated by gencpp from file beb/SendDelayLogic.msg
// DO NOT EDIT!


#ifndef BEB_MESSAGE_SENDDELAYLOGIC_H
#define BEB_MESSAGE_SENDDELAYLOGIC_H

#include <ros/service_traits.h>


#include <beb/SendDelayLogicRequest.h>
#include <beb/SendDelayLogicResponse.h>


namespace beb
{

struct SendDelayLogic
{

typedef SendDelayLogicRequest Request;
typedef SendDelayLogicResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SendDelayLogic
} // namespace beb


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::beb::SendDelayLogic > {
  static const char* value()
  {
    return "2b123fbf2a4603e168a3151939e3bbe7";
  }

  static const char* value(const ::beb::SendDelayLogic&) { return value(); }
};

template<>
struct DataType< ::beb::SendDelayLogic > {
  static const char* value()
  {
    return "beb/SendDelayLogic";
  }

  static const char* value(const ::beb::SendDelayLogic&) { return value(); }
};


// service_traits::MD5Sum< ::beb::SendDelayLogicRequest> should match 
// service_traits::MD5Sum< ::beb::SendDelayLogic > 
template<>
struct MD5Sum< ::beb::SendDelayLogicRequest>
{
  static const char* value()
  {
    return MD5Sum< ::beb::SendDelayLogic >::value();
  }
  static const char* value(const ::beb::SendDelayLogicRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::SendDelayLogicRequest> should match 
// service_traits::DataType< ::beb::SendDelayLogic > 
template<>
struct DataType< ::beb::SendDelayLogicRequest>
{
  static const char* value()
  {
    return DataType< ::beb::SendDelayLogic >::value();
  }
  static const char* value(const ::beb::SendDelayLogicRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::beb::SendDelayLogicResponse> should match 
// service_traits::MD5Sum< ::beb::SendDelayLogic > 
template<>
struct MD5Sum< ::beb::SendDelayLogicResponse>
{
  static const char* value()
  {
    return MD5Sum< ::beb::SendDelayLogic >::value();
  }
  static const char* value(const ::beb::SendDelayLogicResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::beb::SendDelayLogicResponse> should match 
// service_traits::DataType< ::beb::SendDelayLogic > 
template<>
struct DataType< ::beb::SendDelayLogicResponse>
{
  static const char* value()
  {
    return DataType< ::beb::SendDelayLogic >::value();
  }
  static const char* value(const ::beb::SendDelayLogicResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEB_MESSAGE_SENDDELAYLOGIC_H