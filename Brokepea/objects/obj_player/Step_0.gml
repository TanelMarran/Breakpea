/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

audio_listener_position(x,y,0);

if((sprite_index = spr_player_walk or sprite_index = spr_player_walk_carry) && image_tween == 0) {
	audio_sound_pitch(snd_walk1,random_range(0.55,0.65));
	audio_play_sound_at(snd_walk1,x,y,0,50,100,0.4,false,1);
	instance_create_layer(x,y,"Instances",obj_smalldust);
}

carry_cooldown_time = max(0,carry_cooldown_time-1);
damage_flash = max(0,damage_flash-1);
stamina_max = max(60,75-floor(global.points/750)*5);
stamina_recovery_rate = max(0.005,0.02-floor(global.points/750)*0.005);

get_damaged();

event_inherited();

//Get user inputs
reset_keys();
if(rest == 0) {
	if(!defeated) {
		get_inputs();
	}
} else {
	rest--;
}
depth = -y;

move_dir = point_direction(0,0,right_press-left_press,down_press-up_press);
move_spd = point_distance(0,0,right_press-left_press,down_press-up_press)*movement_speed;


t_axis_x = dcos(move_dir)*min(move_spd,movement_speed*enemy_slowdown);
t_axis_y = -dsin(move_dir)*min(move_spd,movement_speed*enemy_slowdown);
if(carry != noone) {
	t_axis_x *= carry_speed;
	t_axis_y *= carry_speed;
}

if(mouse_check_button_pressed(mb_right)) {
	carry = noone;
	carry_cooldown_time = carry_cooldown*2;
}

apply_movement();

x += axis_x;
y += axis_y;

if(!defeated) {
	x = clamp(x,320,960);
	y = clamp(y,320,960);
}