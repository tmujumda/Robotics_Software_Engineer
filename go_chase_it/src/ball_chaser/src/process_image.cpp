#include "ros/ros.h"
#include "ball_chaser/Drive2Target.h"
#include <sensor_msgs/Image.h>



class ProcessImage
{
    private:
        ros::Subscriber img_sub;
        ros::ServiceClient client;
        
        //functions
        void find_the_ball(sensor_msgs::Image);
        void drive_the_bot();

        //variables
        float lin_x, ang_z;
        bool move_requested = false;        
    
    public:
        
        ProcessImage(ros::NodeHandle* n)
        {
            img_sub = n->subscribe("/camera/rgb/image_raw", 10, &ProcessImage::find_the_ball, this);
            client = n->serviceClient<ball_chaser::Drive2Target>("/ball_chaser/command_robot");
        }

};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "process_image");

    ros::NodeHandle n;

    ProcessImage processimg_obj(&n);

    ros::spin();

    return 0;
}

void ProcessImage::find_the_ball(sensor_msgs::Image img)
{
    bool ball_exist = false;
    int pixel_sum = 0;
    int norm = 0;
    int centeroid = 0; //lateral diretion only since height does not matter

    for(int i=0; i< (img.height*img.step)-2;i+=3)
    {  
        if(img.data[i] == 255 && img.data[i+1] == 255 && img.data[i+2] == 255) //255=white pixel
        {   pixel_sum += (i%img.step);
            norm++;
            ball_exist = true;
        }
        
        if (ball_exist == true && (i%img.step) == 0) //if a row is scanned, centroid can be found
        {
            break;
        }
    }
    
    if(ball_exist == true)
    {
        centeroid = (pixel_sum/norm); // only need along x axis for lateral control
        lin_x = 0.3;
        ang_z = -((float) centeroid / (float) img.step)*(2*0.8) + 0.8; //P lateral control 

        move_requested = true;
        drive_the_bot(); // drive the bot using updated velocities
    }
    else
    {
        lin_x = 0.0;
        ang_z = 0.0;
        if (move_requested)
        {
            drive_the_bot(); // drive the bot using updated velocities
        }
        move_requested = false;
    }
    
 }


void ProcessImage::drive_the_bot()
{
    if (lin_x > 0 && fabs(ang_z) < 0.05)
    {
        ROS_INFO_STREAM("Moving the robot straight");    
    }
    else if (lin_x > 0 && ang_z > 0.05)
    {
        ROS_INFO_STREAM("Moving the robot left");
    }
    else if(lin_x > 0 && ang_z < 0.05)
    {
        ROS_INFO_STREAM("Moving the robot right");
    }
    else
    {
        ROS_INFO_STREAM("Stopping the robot, ball !found");
    }
    
    ball_chaser::Drive2Target serv;
    serv.request.linear_x = lin_x;
    serv.request.angular_z = ang_z;

    if(!client.call(serv))
    {
        ROS_ERROR("Could not call the safe_move service");
    }
}