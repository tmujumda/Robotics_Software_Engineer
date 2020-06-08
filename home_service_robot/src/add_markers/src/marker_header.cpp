#include "add_markers/marker_header.h"
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

void initialize_mymarker(visualization_msgs::Marker* marker, const double* x, const double* y)
{
    marker->header.frame_id = "map";
    marker->header.stamp = ros::Time::now();

    marker->ns = "basic_shape";
    marker->id = 0;

    marker->type = visualization_msgs::Marker::CUBE;

    marker->pose.position.x = *x;
    marker->pose.position.y = *y;
    marker->pose.orientation.w = 1.0;

    marker->scale.x = 1.0;
    marker->scale.y = 1.0;
    marker->scale.z = 0.01;

    marker->color.r = 0.0f;
    marker->color.g = 1.0f;
    marker->color.b = 0.0f;
    marker->color.a = 0.5f;

    marker->lifetime = ros::Duration();
}