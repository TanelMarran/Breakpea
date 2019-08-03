/// @description Insert description here
// You can write your code in this editor
movement_angle = axis_x/movement_speed;
sprite_index = spr_player_idle;
image_speed = 1;
var offset = 0;

var dist = point_distance(0,0,axis_x,axis_y);
if(dist != 0) {
	sprite_index = spr_player_walk;
	image_speed = 1+0.2*min(1,dist/movement_speed);
	offset = -image_index*1.2;
}

draw_set_alpha(shadow_alpha);
draw_set_color(color_shadow);
draw_ellipse(x-sprite_width/2,y-5,x+sprite_width/2,y+5,false);
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x,y+offset,1,1,movement_angle*10,c_white,1);