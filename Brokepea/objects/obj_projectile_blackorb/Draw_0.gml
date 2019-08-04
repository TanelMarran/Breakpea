/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < ds_list_size(trail)-1; i++) {
	var current = ds_list_find_value(trail,i);
	var next = ds_list_find_value(trail,i+1);
	draw_set_color(color_gravity);
	draw_line_width(current[0],current[1],next[0],next[1],round(i/ds_list_size(trail)*7))
	draw_set_color(c_white);
}
draw_self();