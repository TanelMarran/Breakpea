/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

depth = -y;

if(z = 0 || (place_meeting(x,y,obj_enemy) && z <= 7)) {
	collision_circle_list(x,y,blast_radius,obj_enemy,false,true,damaged_ids,false);
	potion_splash();
	audio_sound_pitch(snd_flames,random_range(0.85,1.15));
	audio_play_sound_at(snd_flames,x,y,z,100,50,0.4,false,2);
	for(var i = 0; i < ds_list_size(damaged_ids); i++) {
		with(ds_list_find_value(damaged_ids,i)) {
				if(!defeated) {
					other.combo++;
					add_points(defeatpoints*min(4,1+floor(other.combo/2)));
					apply_damage();
					movement_vector_add(3,point_direction(other.x,other.y,x,y));
					if (other.frozen == false) {
						gamefreeze = 5;
						other.frozen = true;
					}
				}
			}
		}
	apply_camera_shake(6,6,0.5,0.5);
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;