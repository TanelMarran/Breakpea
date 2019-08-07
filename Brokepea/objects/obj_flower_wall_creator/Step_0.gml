/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}
if(place_meeting(x,y,obj_flower_wall_creator)) {
	with(instance_place(x,y,obj_flower_wall_creator)) {
		instance_destroy();
	}
	instance_destroy();
}

x += axis_x;
y += axis_y;