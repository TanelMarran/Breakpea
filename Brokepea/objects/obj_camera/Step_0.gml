/// @description Insert description here
// You can write your code in this editor
camera_set_view_pos(view_camera[0], x-160, y-160)

var dir = point_direction(x,y,mouse_x,mouse_y);
var len = point_distance(x,y,mouse_x,mouse_y)*0.3;

x = round(obj_player.x+lengthdir_x(len,dir))
y = round(obj_player.y+lengthdir_y(len,dir))