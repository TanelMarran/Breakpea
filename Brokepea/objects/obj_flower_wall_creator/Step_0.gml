/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}
/*if(place_meeting(x,y,obj_flower_wall_creator)) {
	with(instance_place(x,y,obj_flower_wall_creator)) {
		if(parent != other.parent){
			instance_destroy();
			instance_destroy(other);
		}
	}
}*/

if(lifetime == 0) {
	instance_destroy();
}

lifetime--;

if(lifetime % spawn_frequency == 0) {
	create_flowerwall();
}

x += axis_x;
y += axis_y;