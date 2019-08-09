/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

aim_crosshair_dir_act += angle_difference(aim_crosshair_dir,aim_crosshair_dir_act)*0.5;

if(obj_player.carry != noone) {
	carry_index = obj_player.carry.object_index;
	if(carry_index == obj_seed || carry_index == obj_potion) {
		aim_crosshair_size += (1-aim_crosshair_size)*0.3;
	} else {
		aim_crosshair_size += -aim_crosshair_size*0.3;
	}
} else {
	carry_index = noone;
	aim_crosshair_size += -aim_crosshair_size*0.3;
}

aim_crosshair_size = 1;

aim_angle++;