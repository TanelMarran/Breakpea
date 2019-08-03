/// @description Insert description here
// You can write your code in this editor
sprite_index = sprite_idle;
image_speed = 1;
var offset = 0;

var dist = point_distance(0,0,axis_x,axis_y);
if(dist != 0) {
	sprite_index = sprite_walk;
	image_speed = 1+0.2*min(1,dist/movement_speed);
	offset = -image_index*1.2;
}

movement_angle = axis_x/movement_speed;

draw_shadow();
draw_sprite_ext(sprite_index,image_index,x,y+offset,1,1,-movement_angle*10,c_white,1);