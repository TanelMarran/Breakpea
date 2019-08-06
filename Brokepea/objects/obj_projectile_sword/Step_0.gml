/// @description Insert description here
// You can write your code in this editor'

if(gamefreeze != 0) {
	exit;
}

last_angle = image_angle;
image_angle = aim_angle-swipe_angle/2+swipe_angle*swipe_progress;

swipe_progress += (1-swipe_progress)*swipe_speed;

apply_movement();

x += axis_x;
y += axis_y;

if(place_meeting(x,y,obj_enemy)) {
	instance_place_list(x,y,obj_enemy,damaged_ids,false);
	collision_circle_list(x+lengthdir_x(aim_angle+180,10),y+lengthdir_y(aim_angle+180,10),8,obj_enemy,false,true,damaged_ids,false);
	for(var i = 0; i < ds_list_size(damaged_ids); i++) {
		with(ds_list_find_value(damaged_ids,i)) {
			if(!defeated) {
					audio_sound_pitch(snd_swordcut,random_range(0.55,0.65));
					audio_play_sound_at(snd_swordcut,x,y,z,100,50,0.4,false,2);
					apply_camera_shake(2,2,0.5,0.5);
					other.combo++;
					add_points(defeatpoints*min(4,1+floor(other.combo/2)));
					apply_damage();
					movement_vector_add(random(1.5),other.aim_angle);
					if (other.frozen == false) {
						gamefreeze = 5;
						other.frozen = true;
						apply_camera_shake(3,3,0.2,0.2);
					}
			}
		}
	}
	ds_list_clear(damaged_ids);
}

if(swipe_progress > 0.95) {
	hang_time--;
	if(hang_time == 0) {
		instance_destroy();
	}
}