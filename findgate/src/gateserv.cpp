#include <iostream>
#include <string>
#include "rclcpp/rclcpp.hpp"
#include "interfaces/interface.srv"
#include <memory>
using namespace std; 

void find_gate(const std::shared_ptr<interfaces::srv::interface::request> request,
          std::shared_ptr<interfaces::srv::interface::response> response)
{
  /* 
  response->x_instruct = "request->x_coor + request->y_coor";
  response->y_instruct = "request->x_coor + request->y_coor";
  */
  int x = request->x_coor;
  int y = request->y_coor;
  switch(x)
  {
    case 0:
      response->x_instruct = "move lift";break;
    case 2:
      response->x_instruct = "move right";break;
    default:
      response->x_instruct = "don't move horizontally";break;   
  }

  switch(y)
  {
    case 0:
      response->y_instruct = "move up";break;
    case 2:
      response->y_instruct = "move down";break;     
    default:
      response->y_instruct = "don't move vertically";break;   
  } 

  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "Incoming request\nfirst: %d" " second: %d\n",
                request->x_coor, request->y_coor);
  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "sending back response: [%s] and [%s]\n",
                (string)response->x_instruct , (string)response->y_instruct);
}


int main(int argc, char **argv)
{
  rclcpp::init(argc, argv);

  std::shared_ptr<rclcpp::Node> node = rclcpp::Node::make_shared("guid gate service");

  rclcpp::Service<interfaces::srv::interface>::SharedPtr service =
    node->create_service<interfaces::srv::interface>("guid_gate", &find_gate);

  RCLCPP_INFO(rclcpp::get_logger("rclcpp"), "Ready to guid gate.");

  rclcpp::spin(node);
  rclcpp::shutdown();
}
