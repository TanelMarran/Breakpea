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
	sprite_index = spr_flower_submerge;
	image_index = 0;
	sprouted = 2;
}