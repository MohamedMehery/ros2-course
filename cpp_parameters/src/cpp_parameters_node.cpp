#include <rclcpp/rclcpp.hpp>
#include <chrono>
#include <string>
#include <functional>

using namespace std::chrono_literals;

class ParametersClass: public rclcpp::Node
{
    public:
    ParametersClass(): Node("Parameters_node")
    {
        this->declare_parameter<std::string>("my_paramter" , "world");
        timer_=  this-> create_wall_timer(
            1000ms , std::bind(&ParametersClass::respond,this));
    } 

    void respond()
    {
        this->get_parameter("my_parameter" , paramter_string_ );
        RCLCPP_INFO(this->get_logger() , "Hello %s" , paramter_string_.cstr());
    }
    private:
        std::string paramter_string_;
        rclcpp::TimeBase::SharedPtr timer_;

};


int main(int argc, char** argv)
{
  rclcpp::init(argc, argv);
  rclcpp::spin(std::make_shared<ParametersClass>());
  rclcpp::shutdown();
  return 0;
}
