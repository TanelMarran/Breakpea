with(obj_player) {
	rest = 15;
	var len = 9;
	var dir = point_direction(x,y,mouse_x,mouse_y+13);
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x,y,"Instances",obj_projectile_arrow)) {
		aim_angle = dir;
		axis_x = _axis_x*2;
		axis_y = _axis_y*2;
		acc_amount = 1.5;
		deacc_amount = 1.5;
		t_axis_x = _axis_x*1.5;
		t_axis_y = _axis_y*1.5;
		z = 13;
		audio_sound_pitch(snd_arrowshoot,random_range(0.85,1.15));
		audio_play_sound_at(snd_arrowshoot,x,y,z,100,50,0.4,false,2);
	}
}