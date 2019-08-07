/// @description Insert description here
// You can write your code in this editor
lifetime--;
depth = -y;

if(obj_player.carry != noone && obj_player.carry.object_index == obj_seed) {
	range_alpha += (1-range_alpha)*0.05;
} else {
	range_alpha = range_alpha*0.5;
}

if(lifetime == 0) {
	sprite_index = spr_flower_submerge;
	image_index = 0;
}