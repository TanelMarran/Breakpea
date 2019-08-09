/// @description Insert description here
// You can write your code in this editor
var cx, cy;
aim_crosshair_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y+23);

cx = mouse_x;
cy = mouse_y;

if(carry_index != noone) {
	switch(carry_index) {
		case obj_potion:
			aim_crosshair_len = 105;//point_distance(obj_player.x,obj_player.y,mouse_x,mouse_y+23);
			aim_crosshair_color = color_potion;
			cx = obj_player.x+lengthdir_x(aim_crosshair_len,aim_crosshair_dir_act);
			cy = obj_player.y+lengthdir_y(aim_crosshair_len,aim_crosshair_dir_act);
			y_modif = 1;
			break;
		
		default:
			cx = mouse_x;
			cy = mouse_y;
	}
}

aim_crosshair_x += (cx-aim_crosshair_x)*0.3;
aim_crosshair_y += (cy-aim_crosshair_y)*0.3;

var nmb_of_points = 8;
var _x, _y;
draw_set_color(aim_crosshair_color);
for(var i = 0; i < nmb_of_points; i++) {
	for(var j = 0; j < 2; j++) {
		_x[j] = aim_crosshair_x+lengthdir_x(aim_crosshair_width*aim_crosshair_size,360/nmb_of_points*(i+j)+aim_angle);
		_y[j] = aim_crosshair_y+lengthdir_y(aim_crosshair_height*aim_crosshair_size,360/nmb_of_points*(i+j)+aim_angle);
	}
	draw_set_alpha((i % 2));
	draw_set_color(c_white);
	draw_line_width(_x[0],_y[0],_x[1],_y[1],2);
}
draw_circle(aim_crosshair_x,aim_crosshair_y,1*aim_crosshair_size,false);
draw_set_alpha(1);
