#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <add_markers/marker_service.h>
#include "add_markers/marker_header.h"

class AddMarkers
{
    private:
        ros::Publisher marker_pub;
        ros::ServiceServer service;
        visualization_msgs::Marker marker;

        bool handle_move_request(add_markers::marker_service::Request& , add_markers::marker_service::Response& );

    public:
        AddMarkers(ros::NodeHandle* n)
        {
            marker_pub = n->advertise<visualization_msgs::Marker>("/add_markers/visualization_marker",1);
            service = n->advertiseService("/add_markers/add_marker_service", &AddMarkers::handle_move_request, this);
        }
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "add_markers");

    ros::NodeHandle n;

    AddMarkers add_marker_object(&n);

    ros::spin();

    return 0;

}

bool AddMarkers::handle_move_request(add_markers::marker_service::Request& req, add_markers::marker_service::Response& res)
{
    if (req.show_marker)
    {
        ROS_INFO("Showing the marker %f, %f",(float) req.x, (float) req.y);
        initialize_mymarker(&marker,&req.x,&req.y);
        marker.action = visualization_msgs::Marker::ADD;

        marker_pub.publish(marker);
    }
    else
    {
        ROS_INFO("Deleting the marker");
        marker.action = visualization_msgs::Marker::DELETE;

        marker_pub.publish(marker);
    }

    res.marker_updated = true;

    return true;
    
}