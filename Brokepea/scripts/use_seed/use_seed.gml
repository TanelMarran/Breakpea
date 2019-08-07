with(obj_player) {
	var len = 1.5;
	var dir = point_direction(x,y,mouse_x,mouse_y+23);
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x,y,"Instances",obj_projectile_seed)) {
		aim_angle = dir;
		axis_x = _axis_x;
		axis_y = _axis_y;
		axis_z = 6;
		audio_sound_pitch(snd_glassthrow,random_range(0.85,1.15));
		audio_play_sound_at(snd_glassthrow,x,y,z,100,50,0.4,false,2);
	}
}