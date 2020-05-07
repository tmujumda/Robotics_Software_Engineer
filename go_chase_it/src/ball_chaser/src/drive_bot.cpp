#include "ros/ros.h"
#include <geometry_msgs/Twist.h>
#include "ball_chaser/Drive2Target.h"

class RobotMover
{
    private:
        ros::Publisher motor_command_publisher;
        ros::ServiceServer service;

        bool handle_move_request(ball_chaser::Drive2Target::Request& req,ball_chaser::Drive2Target::Response& res)
        {
            ROS_INFO("Request for linear:%.2f, angular:%.2f",(float)req.linear_x, (float)req.angular_z);

            geometry_msgs::Twist vel_cmd;

            vel_cmd.linear.x = req.linear_x;
            vel_cmd.angular.z = req.angular_z;

            motor_command_publisher.publish(vel_cmd);

            res.msg_feedback = "Velocities set at (linear, angular):" + std::to_string(req.linear_x) + ", " + std::to_string(req.angular_z);

            ROS_INFO_STREAM(res.msg_feedback);

            return true;
        }

    public:
        RobotMover(ros::NodeHandle* n)
        {
            motor_command_publisher = n->advertise<geometry_msgs::Twist>("/cmd_vel",10);

            service = n->advertiseService("/ball_chaser/command_robot", &RobotMover::handle_move_request, this);
        }

        

};


int main(int argc, char** argv)
{
    ros::init(argc, argv, "drive_bot");
    ros::NodeHandle n;

    ROS_INFO("Ready to drive the bot");
    RobotMover robotmover(&n);

    ros::spin();

    return 0;

}

