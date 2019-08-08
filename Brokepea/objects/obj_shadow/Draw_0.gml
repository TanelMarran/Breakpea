/// @description Insert description here
// You can write your code in this editor
var cx, cy;
aim_crosshair_dir = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y+23);

if(carry_index != noone) {
	switch(carry_index) {
		case obj_potion:
			aim_crosshair_len = 145;
			aim_crosshair_color = color_potion;
			break;
				
		case obj_seed:
			aim_crosshair_len = 65;
			aim_crosshair_color = color_flower;
			break;
	}
}

cx = obj_player.x+lengthdir_x(aim_crosshair_len*aim_crosshair_size,aim_crosshair_dir_act);
cy = obj_player.y+lengthdir_y(aim_crosshair_len*aim_crosshair_size,aim_crosshair_dir_act);

var nmb_of_points = 8;
var _x, _y;
draw_set_color(aim_crosshair_color);
for(var i = 0; i < nmb_of_points; i++) {
	for(var j = 0; j < 2; j++) {
		_x[j] = cx+lengthdir_x(aim_crosshair_width*aim_crosshair_size,360/nmb_of_points*(i+j)+aim_angle);
		_y[j] = cy+lengthdir_y(aim_crosshair_height*aim_crosshair_size,360/nmb_of_points*(i+j)+aim_angle);
	}
	draw_set_alpha((i % 2));
	draw_set_color(c_white);
	draw_line_width(_x[0],_y[0],_x[1],_y[1],2);
}
draw_circle(cx,cy,1*aim_crosshair_size,false);
draw_set_alpha(1);
