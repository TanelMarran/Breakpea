/// @description Insert description here
// You can write your code in this editor
depth = -y;
image_index = irandom(2);

//Queue trail
if(ds_list_size(trail) > trail_length or death) {
	ds_list_delete(trail,0);
}
if(!death) {
	ds_list_add(trail,array(x+random_range(-1,1),y+random_range(-1,1)));
} else {
	if (ds_list_size(trail) == 0) {
		instance_destroy();
	}
}