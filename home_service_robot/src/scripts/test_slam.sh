#!/bin/sh

workspace_path="/home/robond/Robotics_Software_Engineer/home_service_robot"

# Open the workspace, source and launch world.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && roslaunch my_robot world.launch" &

sleep 5

# Open the workspace, source and launch gmapping.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && roslaunch my_robot slam_gmapping_tapan.launch" &

sleep 5

# Open the workspace, source and launch rviz.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && rosrun rviz rviz" &

sleep 5

# Open the workspace, source and launch keyboard_teleop.launch
xterm -e "cd "$workspace_path" && source devel/setup.bash && rosrun teleop_twist_keyboard teleop_twist_keyboard.py"
