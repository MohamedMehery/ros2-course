#include <iostream>
//#include <utility> 
#include <string>
#include "rclcpp/rclcpp.hpp"

#include <memory>
using namespace std; 

void serv(const std::shared_ptr<string> request,
          std::shared_ptr<string>      response)
{
  response->sum = request->a + request->b;
  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "Incoming request\nfirst: %d" " second: %d",
                request->a, request->b);
  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "sending back response: [%ld]", (long int)response->sum);
}