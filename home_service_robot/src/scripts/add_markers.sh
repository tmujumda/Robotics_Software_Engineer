#!/bin/sh

workspace_path="/home/robond/Robotics_Software_Engineer/home_service_robot"

# Open the workspace, source and launch world.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && roslaunch my_robot world.launch" &

sleep 5

# Open the workspace, source and launch amcl.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && roslaunch my_robot amcl.launch" &

sleep 5

# Open the workspace, source and launch add_markers.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && rosrun add_markers add_markers" 
