#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include<vector>
#include<geometry_msgs/Quaternion.h>
#include <add_markers/marker_service.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

geometry_msgs::Quaternion ToQuaternion(float, float, float); // yaw (Z), pitch (Y), roll (X)


struct Goal
{
    double x,y;
    std::string name;
    geometry_msgs::Quaternion q;
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "pick_objects");
    MoveBaseClient ac("move_base", true);
    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<add_markers::marker_service>("/add_markers/add_marker_service");

    while(!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for move_base server to come online");
    }

    move_base_msgs::MoveBaseGoal goal;

    std::vector<Goal> MapGoals = {{3.5,-2.0,"Pickup",ToQuaternion(-M_PI/2.0,0,0)},{-2.5,-3.75,"DropOff",ToQuaternion(-M_PI,0,0)}};
    add_markers::marker_service serv;

    for (int i=0;i<MapGoals.size();i++)
    {
        
        if(i==1)
        {
            ROS_INFO("Picking up the object");
            serv.request.x = MapGoals[i].x;
            serv.request.y = MapGoals[i].y;
            serv.request.show_marker = false;

            if(!client.call(serv))
            {
                ROS_ERROR("Could not call the safe_move service");
            }

            ros::Duration(5).sleep();
        }
        else
        {
            serv.request.x = MapGoals[i].x;
            serv.request.y = MapGoals[i].y;
            serv.request.show_marker = true;

            if(!client.call(serv))
            {
                ROS_ERROR("Could not call the safe_move service");
            }
        }

        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();
        
        goal.target_pose.pose.position.x = MapGoals[i].x;
        goal.target_pose.pose.position.y = MapGoals[i].y;

        goal.target_pose.pose.orientation = MapGoals[i].q;

        ROS_INFO_STREAM("Sending " + MapGoals[i].name + " position!");

        ac.sendGoal(goal);

        ac.waitForResult();

        if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        {
            ROS_INFO_STREAM("Reached " + MapGoals[i].name + " point!");
            if(MapGoals[i].name == "DropOff")
            {
                serv.request.x = MapGoals[i].x;
                serv.request.y = MapGoals[i].y;
                serv.request.show_marker = true;

                if(!client.call(serv))
                {
                    ROS_ERROR("Could not call the safe_move service");
                }
            }
        }
        else
        {
            ROS_INFO_STREAM("Could not reached " + MapGoals[i].name + " point!");
        }

    }

    ros::spin();
    return 0;
}

geometry_msgs::Quaternion ToQuaternion(float yaw, float pitch, float roll) // yaw (Z), pitch (Y), roll (X)
{
    // Abbreviations for the various angular functions
    float cy = cos(yaw * 0.5);
    float sy = sin(yaw * 0.5);
    float cp = cos(pitch * 0.5);
    float sp = sin(pitch * 0.5);
    float cr = cos(roll * 0.5);
    float sr = sin(roll * 0.5);

    geometry_msgs::Quaternion q;
    q.w = cr * cp * cy + sr * sp * sy;
    q.x = sr * cp * cy - cr * sp * sy;
    q.y = cr * sp * cy + sr * cp * sy;
    q.z = cr * cp * sy - sr * sp * cy;

    return q;
}