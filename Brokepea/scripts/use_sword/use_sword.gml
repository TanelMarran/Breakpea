//switch()
with(obj_player) {
	rest = 30;
	var len = 4;
	var dir = point_direction(x,y,mouse_x,mouse_y);
	axis_x = lengthdir_x(len,dir);
	axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x+axis_x*1.2,y+axis_y*1.2-sprite_height/2,"Instances",obj_projectile_sword)) {
		aim_angle = dir;
		axis_x = other.axis_x;
		axis_y = other.axis_y;
	}
}