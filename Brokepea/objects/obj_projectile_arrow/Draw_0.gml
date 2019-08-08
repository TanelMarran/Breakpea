/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < ds_list_size(trail)-1; i++) {
	var current = ds_list_find_value(trail,i);
	var next = ds_list_find_value(trail,i+1);
	draw_set_color(c_white);
	draw_set_alpha(0.7);
	draw_line_width(current[0],current[1],next[0],next[1],round(i/ds_list_size(trail)*8))
	draw_set_alpha(1);
}
draw_shadow();
image_angle = aim_angle;
draw_sprite_ext(sprite_index,image_index,x+random_range(-2,2),y-z+random_range(-2,2),1,1,aim_angle,c_white,1);