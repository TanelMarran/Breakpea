/// @description Insert description here
// You can write your code in this editor
if(sprite_index = spr_bigflower_sprout) {
flower_ids = ds_list_create();

	collision_circle_list(x,y,vine_radius,obj_flower,false,true,flower_ids,false);
	for(var i = 0; i < ds_list_size(flower_ids); i++) {
		var fid = ds_list_find_value(flower_ids,i);
		with(fid) {
			create_flowerwall_creator(other.x,other.y);
		}
		create_flowerwall_creator(fid.x,fid.y);
	}
	ds_list_destroy(flower_ids);
	
	sprite_index = spr_bigflower_idle;
	image_index = 0;
}
if(sprite_index = spr_bigflower_submerge) {
	instance_destroy();
}