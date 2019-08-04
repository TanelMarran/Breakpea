/// @description Insert description here
// You can write your code in this editor
var centeronX = 160;
var centeronY = 480;
if(obj_player.defeat_screen_flow <= 60) {
	centeronX = target_x;
	centeronY = target_y;
	x = camera_get_view_x(view_camera[0])+target_x;
	y = camera_get_view_y(view_camera[0])+target_y;
}
draw_sprite_ext(sprite_index,0,camera_get_view_x(view_camera[0])+centeronX,camera_get_view_y(view_camera[0])+centeronY,image_xscale,image_yscale,hovering*dsin(gametime*2)*15,c_white,1);
