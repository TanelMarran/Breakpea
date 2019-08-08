/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}
fly_time--;
frozen = max(0,frozen-1);

//if(place_meeting(x,y,obj_enemy)) {
	//collision_circle_list(x,y,7,obj_enemy,false,true,damaged_ids,false);
	instance_place_list(x,y,obj_enemy,damaged_ids,false);
	for(var i = 0; i < ds_list_size(damaged_ids); i++) {
		with(ds_list_find_value(damaged_ids,i)) {
			if(!defeated) {
				var sound = choose(snd_arrowpierce1alt,snd_arrowpierce2alt);
				audio_sound_pitch(sound,random_range(0.55+other.combo*0.08,0.60+other.combo*0.08));
				audio_play_sound_at(sound,x,y,z,100,50,0.4,false,2);
				other.combo++;
				add_points(defeatpoints*min(5,1+floor(other.combo/3)));
				apply_damage(8);
				movement_vector_add(3,other.aim_angle);
				if (other.frozen == 0 && distance_to_object(obj_player) < 320) {
					gamefreeze = 10;
					other.frozen = other.froze_time_max;
					apply_camera_shake(2,2,0.2,0.2);
				}
				apply_camera_shake(4,4,0.6,0.6);
				arrowed = true;
				arrowed_angle = other.aim_angle+random_range(-1,2);
			}
		}
	}
	ds_list_clear(damaged_ids);
//}

if(fly_time == 0) {
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;

//Queue trail
if(ds_list_size(trail) > trail_length) {
	ds_list_delete(trail,0);
}
ds_list_add(trail,array(x,y-z));