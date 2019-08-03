/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

event_inherited();

//Get user inputs

get_inputs();
rest = max(0,rest-1);

depth = -y;

move_dir = point_direction(0,0,right_press-left_press,down_press-up_press);
if(rest == 0) {
	move_spd = point_distance(0,0,right_press-left_press,down_press-up_press)*movement_speed;
}

t_axis_x = dcos(move_dir)*min(move_spd,movement_speed);
t_axis_y = -dsin(move_dir)*min(move_spd,movement_speed);

apply_movement();

x += axis_x;
y += axis_y;