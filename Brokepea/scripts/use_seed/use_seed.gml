with(obj_player) {
	var len = 2.2;
	var dir = obj_shadow.aim_crosshair_dir;
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x+_axis_x,y+_axis_y,"Instances",obj_projectile_seed)) {
		aim_angle = dir;
		axis_x = _axis_x;
		axis_y = _axis_y;
		target_x = mouse_x;
		target_y = mouse_y+23;
		z_gravity = 0.3;
		acc_amount = 0.04;
		axis_z = 6;
		z = 13;
		audio_sound_pitch(snd_seedthrow,random_range(0.85,1.15));
		audio_play_sound_at(snd_seedthrow,x,y,z,100,50,0.4,false,2);
	}
}