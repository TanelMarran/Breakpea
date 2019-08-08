with(obj_player) {
	rest = 10;
	var len = 3.5;
	var dir = obj_shadow.aim_crosshair_dir;
	var _axis_x = lengthdir_x(len,dir);
	var _axis_y = lengthdir_y(len,dir);
	with(instance_create_layer(x+_axis_x,y+_axis_y,"Instances",obj_projectile_potion)) {
		aim_angle = dir;
		axis_x = _axis_x;
		axis_y = _axis_y;
		axis_z = 6;
		z = 23;
		audio_sound_pitch(snd_glassthrow,random_range(0.85,1.15));
		audio_play_sound_at(snd_glassthrow,x,y,z,100,50,0.4,false,2);
	}
}