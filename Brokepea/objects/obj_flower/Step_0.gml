/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

lifetime++;
depth = -y;

if(obj_player.carry != noone && obj_player.carry.object_index == obj_seed) {
	range_alpha += (1-range_alpha)*0.05;
} else {
	range_alpha = range_alpha*0.5;
}

if(sprouted == true) {
	var sound = snd_flowersubmerge;
	audio_sound_pitch(sound,random_range(0.55,1.65));
	audio_play_sound_at(sound,x,y,z,80,10,0.6,false,2);
	sprite_index = spr_bigflower_submerge;
	image_index = 0;
	sprouted = 2;
}