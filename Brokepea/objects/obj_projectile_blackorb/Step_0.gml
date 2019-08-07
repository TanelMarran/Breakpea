/// @description Insert description here
// You can write your code in this editor
depth = -y;
image_index = irandom(2);

//Queue trail
if(ds_list_size(trail) > trail_length) {
	ds_list_delete(trail,0);
}
ds_list_add(trail,array(x+random_range(-1,1),y+random_range(-1,1)));