sudo supervisorctl stop can_port guardian lower_control sys_data_hub gui_tools_set

gnome-terminal --tab -- bash -c "ls; exec bash"
gnome-terminal --tab -- bash -c "source ./devel/setup.bash; roslaunch can_port can_port_arm.launch; exec bash"
gnome-terminal --tab -- bash -c "source ./devel/setup.bash; roslaunch lower_control lower_control.launch; exec bash"
gnome-terminal --tab -- bash -c "source ./devel/setup.bash; roslaunch sys_data_hub sys_data_hub.launch; exec bash"
gnome-terminal --tab -- bash -c "source ./devel/setup.bash; roslaunch gui_tools_set gui_tools_set.launch; exec bash"

# gnome-terminal --window \
# 	--tab -- bash -c "source ./devel/setup.bash; roslaunch can_port can_port_arm.launch; exec bash" \
# 	--tab -- bash -c "source ./devel/setup.bash; roslaunch guardian hercules3.5_v2.0_guardian.launch; exec bash" \
# 	--tab -- bash -c "source ./devel/setup.bash; roslaunch lower_control lower_control.launch; exec bash" \
# 	--tab -- bash -c "source ./devel/setup.bash; roslaunch sys_data_hub sys_data_hub.launch; exec bash"\
# 	--tab -- bash -c "source ./devel/setup.bash; roslaunch gui_tools_set gui_tools_set.launch; exec bash"



#gnome-terminal --window  -- bash -c "top; exec bash"    #另起窗口
#gnome-terminal --tab -- bash -c "top; exec bash" 　　　　#另起标签
#gnome-terminal --window --tab -- bash -c "top; exec bash"     #另起窗口+另起标签
