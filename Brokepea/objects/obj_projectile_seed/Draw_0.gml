/// @description Insert description here
// You can write your code in this editor

if(draw_other != false) {
	if(instance_exists(draw_other)) {
		with(draw_other) {
			draw_set_color(color_flower);
			var _x, _y;
			var nmb_of_points = 45;
			for(var i = 0; i < nmb_of_points; i++) {
				for(var j = 0; j < 2; j++) {
					_x[j] = x+lengthdir_x(vine_radius,360/nmb_of_points*(i+j)+lifetime);
					_y[j] = y+lengthdir_y(vine_radius,360/nmb_of_points*(i+j)+lifetime);
				}
				draw_set_alpha((i % 2)); 
				draw_line_width(_x[0],_y[0],_x[1],_y[1],range_alpha*2);
			}
			draw_set_color(c_white);
			draw_set_alpha(1);
		}
	} else {
		instance_destroy();
	}
} else {
	draw_shadow();
	draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,image_yscale,image_angle,c_white,1);
}