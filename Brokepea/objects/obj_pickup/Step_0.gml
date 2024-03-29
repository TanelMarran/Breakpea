/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

apply_movement();

x += axis_x;
y += axis_y;

pickup_cooldown = max(0,pickup_cooldown-1);

if(on_ground) {
	depth = -y;
	if(place_meeting(x,y,obj_player) && obj_player.carry_cooldown_time = 0 && obj_player.defeated == false) {
		on_ground = false;
		audio_sound_pitch(snd_pickup,random_range(0.75,1.25));
		audio_play_sound_at(snd_pickup,x,y,z,100,50,0.4,false,2);
		obj_player.carry = id;
		obj_player.carry_cooldown_time = obj_player.carry_cooldown;
	}
	x = clamp(x,320,320+room_size);
	y = clamp(y,320,320+room_size);
} else {
	depth = obj_player.depth;
	x += (obj_player.x+obj_player.carry_x-x)*0.4;
	y += (obj_player.y+obj_player.carry_y-y)*0.4;
	if(mouse_check_button_pressed(mb_left) && obj_player.defeated == false) {
		script_execute(use_script);
		obj_player.carry = noone;
		instance_destroy()
	}
	if(obj_player.carry != id) {
		on_ground = true;
		pickup_cooldown = 30;
		var dir = irandom(360);
		var dist = random(4);
		axis_x = lengthdir_x(dist,dir);
		axis_y = lengthdir_y(dist,dir);
		x -= obj_player.carry_x;
		y -= obj_player.carry_y;
	}
}