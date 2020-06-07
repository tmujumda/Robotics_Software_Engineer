#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <add_markers/marker_service.h>

class AddMarkers
{
    private:
        ros::Publisher marker_pub;
        ros::ServiceServer service;
        visualization_msgs::Marker marker;
        
        void initialize_marker(double, double );
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
        initialize_marker(req.x,req.y);
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

void AddMarkers::initialize_marker(double x, double y)
{
    marker.header.frame_id = "map";
    marker.header.stamp = ros::Time::now();

    marker.ns = "basic_shape";
    marker.id = 0;

    marker.type = visualization_msgs::Marker::CUBE;

    marker.pose.position.x = x;
    marker.pose.position.y = y;
    marker.pose.orientation.w = 1.0;

    marker.scale.x = 1.0;
    marker.scale.y = 1.0;
    marker.scale.z = 0.01;

    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 0.5f;

    marker.lifetime = ros::Duration();
}