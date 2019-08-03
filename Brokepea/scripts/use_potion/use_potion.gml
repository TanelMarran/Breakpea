//switch()
with(obj_player) {
	rest = 10;
	var len = 4;
	var dir = point_direction(x,y,mouse_x,mouse_y);
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x+_axis_x,y+_axis_y,"Instances",obj_projectile_potion)) {
		aim_angle = dir;
		axis_x = _axis_x;
		axis_y = _axis_y;
		axis_z = 2;
		z = sprite_height;
	}
}