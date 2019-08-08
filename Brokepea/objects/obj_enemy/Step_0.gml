/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

pulled = false;
damage_flash = max(0,damage_flash-1);
pursuing = false;
depth = -y;

//event_inherited();
if(flowerslow != false) {
	pushout(obj_enemy);
} else {
	pushout();
}

if(sprite_index = sprite_pursue && image_tween == 0) {
	audio_sound_pitch(snd_walk1,random_range(0.65,0.75));
	audio_play_sound_at(snd_monsterwalk1,x,y,0,50,100,0.4,false,3);
}

dist_to_player = point_distance(x,y,obj_player.x,obj_player.y);

inview = abs(obj_camera.x-x) < 180 && abs(obj_camera.y-y) < 180;

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
		if(irandom(instance_number(obj_enemy)*180) = 1) {
			var sound = choose(snd_monsterwander1,snd_monsterwander2,snd_monsterwander3,snd_monsterwander4);
			audio_sound_pitch(sound,random_range(0.75,1.25));
			audio_play_sound_at(sound,obj_enemy.x,obj_enemy.y,0,150,300,0.4,false,4);
		}
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

bluedrown_percent *= 0.9;
if(flowerslow != false) {
	t_axis_x *= 0.3;
	t_axis_y *= 0.3;
	x += (flowerslow[0]-x)*0.05;
	y += (flowerslow[1]-y)*0.05;
	bluedrown_percent += (1-bluedrown_percent)*0.1;
}

if(!place_meeting(x,y,obj_flower_wall)) {
	flowerslow = false;
}

apply_movement();

x += axis_x;
y += axis_y;

if (hp <= 0 && !defeated) {
	var sound = choose(snd_monsterdefeat1,snd_monsterdefeat2);
	audio_sound_pitch(sound,random_range(1.05,1.15));
	audio_sound_gain(sound,1.5,10);
	audio_play_sound_at(sound,x,y,0,50,100,0.4,false,1);
	enemy_defeated();
}
if(defeated and z <= 9 and axis_z < 0) {
	defeat_puff();
	instance_destroy();
}

if(!defeated) {
	x = clamp(x,320,320+room_size);
	y = clamp(y,320,320+room_size);
}