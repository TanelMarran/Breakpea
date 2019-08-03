/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

depth = -y;

event_inherited();

movement_dir = point_direction(x,y,obj_player.x,obj_player.y);
dist_to_player = point_distance(x,y,obj_player.x,obj_player.y);

var chosen_speed = movement_speed;

if (dist_to_player < aggro_range) {
	chosen_speed = aggro_speed;
}

chosen_speed = min(chosen_speed,dist_to_player);

t_axis_x = lengthdir_x(chosen_speed,movement_dir);
t_axis_y = lengthdir_y(chosen_speed,movement_dir);

apply_movement();

x += axis_x;
y += axis_y;

if (hp == 0) {
	instance_destroy();
}