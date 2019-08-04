/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}
fly_time--;
frozen = max(0,frozen-1);

var _list = ds_list_create();
instance_place_list(x,y,obj_enemy,_list,false);
for(var i = 0; i < ds_list_size(_list); i++) {
	with(ds_list_find_value(_list,i)) {
		if(!defeated) {
			audio_sound_pitch(snd_swordcut,random_range(0.55,0.65));
			audio_play_sound_at(snd_swordcut,x,y,z,100,50,0.4,false,2);
			other.combo++;
			add_points(defeatpoints*min(4,1+floor(other.combo/4)));
			apply_damage(8);
			movement_vector_add(3,other.aim_angle);
			if (other.frozen == 0 && distance_to_object(obj_player) < 320) {
				gamefreeze = 10;
				other.frozen = other.froze_time_max;
				apply_camera_shake(2,2,0.2,0.2);
			}
			arrowed = true;
			arrowed_angle = other.aim_angle+random_range(-1,2);
		}
	}
}
ds_list_destroy(_list);

if(fly_time == 0) {
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;