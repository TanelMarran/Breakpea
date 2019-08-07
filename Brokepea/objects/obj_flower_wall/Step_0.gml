/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

lifetime--;
depth = -y;

if(obj_player.carry != noone && obj_player.carry.object_index == obj_seed) {
	range_alpha += (1-range_alpha)*0.05;
} else {
	range_alpha = range_alpha*0.5;
}

instance_place_list(x,y,obj_enemy,grabbed_ids,false);
for(var i = 0; i < min(ds_list_size(grabbed_ids),15); i++) {
	with(ds_list_find_value(grabbed_ids,i)) {
		if(!defeated) {
				flowerslow = other.id;
			}
		}
	}
ds_list_clear(grabbed_ids);

if(lifetime == 0) {
	sprite_index = spr_submerge;
	image_index = 0;
}