/// @description Insert description here
// You can write your code in this editor
surface_set_target(score_surface);
	draw_clear_alpha(c_white,0);
	trace(string(round(points_displayed)));
	for(var i = 1; i <= nmb_of_characters+1; i++) {
		if(i == nmb_of_characters+1) {
			draw_sprite(score_chars,10,(nmb_of_characters+1)*(char_width+spacing),0);
		} else {
			var number = string_char_at(string(round(points_displayed)),i);
			draw_sprite(score_chars,string_pos(number,numbers)-1,i*(char_width+spacing),0);
		}
	}
surface_reset_target();

var scale = 0.3+point_rush*0.8;
var actual_width = scale*surface_get_width(score_surface);
var actual_height = scale*surface_get_height(score_surface);
var centeronX = 160-actual_width/2;
var centeronY = 32-actual_height/2;

draw_surface_ext(score_surface,camera_get_view_x(view_camera[0])+centeronX,camera_get_view_y(view_camera[0])+centeronY,scale,scale,0,c_white,1);
