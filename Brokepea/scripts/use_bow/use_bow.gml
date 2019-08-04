with(obj_player) {
	rest = 2;
	var len = 9;
	var dir = point_direction(x,y,mouse_x,mouse_y+13);
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x+_axis_x,y+_axis_y,"Instances",obj_projectile_arrow)) {
		aim_angle = dir;
		axis_x = _axis_x*2;
		axis_y = _axis_y*2;
		t_axis_x = _axis_x*0.7;
		t_axis_y = _axis_y*0.7;
		z = 13;
	}
}