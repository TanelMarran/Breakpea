/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

depth = -y;
if(z = 0 || (instance_place(x,y,obj_enemy) && z <= 22)) {
	var _list = ds_list_create();
	instance_place_list(x,y,obj_enemy,_list,false);
	for(var i = 0; i < 1; i++) {
		with(ds_list_find_value(_list,i)) {
			if(!defeated) {
				var sound = snd_rock;
				audio_sound_pitch(sound,random_range(0.95,1.05));
				audio_play_sound_at(sound,x,y,z,100,50,0.4,false,2);
				add_points(defeatpoints*2);
				apply_damage();
				movement_vector_add(1,point_direction(0,0,other.axis_x,other.axis_y));
				if (other.frozen == false) {
					gamefreeze = 5;
					other.frozen = true;
					apply_camera_shake(3,2,0.2,0.5);
				}
				instance_destroy(other);
			}
		}
		instance_create_layer(x,y,"Instances",obj_rockfade);
	}
	ds_list_destroy(_list);
}

if(fly_time == 0) {
	z_gravity = 0.8;
} else {
	fly_time--;
}


apply_movement();

x += axis_x;
y += axis_y;