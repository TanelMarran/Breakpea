enemy_slowdown = 1;
var _list = ds_list_create();
var increase_size = 1.5
var count = collision_ellipse_list(x-shadow_width/2*increase_size,y-shadow_height/2*increase_size,x+shadow_width/2*increase_size,y+shadow_height/2*increase_size,obj_enemy,false,true,_list,false);
var _stamina_buildup = 0;
if (count == 0) {
	stamina_buildup = max(0,stamina_buildup-(stamina_max-stamina_buildup)*stamina_recovery_rate);
} else {
	for(var i = 0; i < ds_list_size(_list); i++) {
		with(ds_list_find_value(_list,i)) {
			if(!defeated) {
				with(other) {
					if(!place_meeting(x,y,obj_flower_wall)) {
						enemy_slowdown = min(enemy_slowdown_max,enemy_slowdown-0.1)
					}
				}
			}
		}
	}
	_stamina_buildup += stamina_buildup_speed_max/5;
}
ds_list_clear(_list);

_stamina_buildup = min(_stamina_buildup,stamina_buildup_speed_max);
stamina_buildup += _stamina_buildup;


if(stamina_buildup >= stamina_max && defeated = false) {
	audio_sound_pitch(snd_swordcut,random_range(1.2,1.35));
	audio_play_sound_at(snd_swordcut,x,y,z,100,50,0.4,false,2);
	defeated = true;
	axis_z = 5;
	z_gravity = 0.4;
	z = 0.1;
	damage_flash = 10;
	gamefreeze = 20;
	stamina_buildup = 0;
	carry = noone;
	movement_vector_add(random_range(1,2),irandom(360));
	acc_amount = 0.01;
	deacc_amount = 0.01;
	apply_camera_shake(8,8,0.5,0.5);
}

if(defeated = true && !visible) {
	defeat_screen_flow = max(0,defeat_screen_flow-1);
}

if(defeated = true && z == 0 && visible) {
	visible = false;
	axis_x = 0;
	axis_y = 0;
	global.highscore = max(global.highscore,global.points);
	write_score();
	defeat_puff(-8);
	defeat_puff(-8);
}