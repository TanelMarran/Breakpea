/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

camera_set_view_pos(view_camera[0], x-160, y-160)

camera_xshake = max(0,camera_xshake-camera_xshake_deacc);
camera_yshake = max(0,camera_yshake-camera_yshake_deacc);

var dir = point_direction(x,y,mouse_x,mouse_y);
var len = point_distance(x,y,mouse_x,mouse_y)*0.3;

x = round(obj_player.x+lengthdir_x(len,dir))+random_range(-camera_xshake,camera_xshake)
y = round(obj_player.y+lengthdir_y(len,dir))+random_range(-camera_yshake,camera_yshake)