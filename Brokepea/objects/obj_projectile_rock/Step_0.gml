/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

depth = -y;
if(instance_place(x,y,obj_enemy)) {
	instance_place_list(x,y,obj_enemy,damaged_ids,false);
	for(var i = 0; i < 1; i++) {
		with(ds_list_find_value(damaged_ids,i)) {
			if(!defeated) {
				var sound = snd_rock;
				audio_sound_pitch(sound,random_range(0.95,1.05));
				audio_play_sound_at(sound,x,y,z,100,50,0.4,false,2);
				obj_player.stone_boost = other.stone_boost_amount;
				with(instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_smalldust)) {
					image_xscale = 1.2;
					image_yscale = 1.2;
				}
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
}

if(fly_time == 0) {
	instance_destroy();
} else {
	fly_time--;
}


apply_movement();

x += axis_x;
y += axis_y;