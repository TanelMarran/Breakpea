/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

damage_flash = max(0,damage_flash-1);
pursuing = false;
depth = -y;

event_inherited();

if(sprite_index = sprite_pursue && image_tween == 0) {
	audio_sound_pitch(snd_walk1,random_range(0.65,0.75));
	audio_play_sound_at(snd_monsterwalk1,x,y,0,50,100,0.4,false,3);
}

dist_to_player = point_distance(x,y,obj_player.x,obj_player.y);

if(!defeated) {
	//Pursue player
	if(dist_to_player < wander_range && obj_player.defeated == false) {
		movement_dir = point_direction(x,y,obj_player.x,obj_player.y);

		var chosen_speed = movement_speed;

		if (dist_to_player < aggro_range) {
			chosen_speed = aggro_speed;
			pursuing = true;
		}

		chosen_speed = min(chosen_speed,dist_to_player);

		t_axis_x = lengthdir_x(chosen_speed,movement_dir);
		t_axis_y = lengthdir_y(chosen_speed,movement_dir);
	} else { //Wander
	
		movement_dir = irandom(360);
		var rand = irandom(100);
		if(rand = 0) {
			t_axis_x = lengthdir_x(movement_speed,movement_dir);
			t_axis_y = lengthdir_y(movement_speed,movement_dir);
		}
		if(rand = 1) {
			t_axis_x = 0;
			t_axis_y = 0;
		}
	}
}

apply_movement();

x += axis_x;
y += axis_y;

if (hp <= 0 && !defeated) {
	var sound = choose(snd_monsterdefeat1,snd_monsterdefeat2);
	audio_sound_pitch(sound,random_range(1.05,1.15));
	audio_play_sound_at(sound,x,y,0,50,100,0.4,false,2);
	enemy_defeated();
}
if(defeated and z <= 9 and axis_z < 0) {
	defeat_puff();
	instance_destroy();
}

if(!defeated) {
	x = clamp(x,320,960);
	y = clamp(y,320,960);
}