/// @description Insert description here
// You can write your code in this editor
image_speed = 1+min(point_distance(0,0,axis_x,axis_y),2)/2*0.5;
draw_shadow();
draw_sprite_ext(sprite_index,image_index,x,y-z+dsin(gametime*2)*4,1,1,dsin(gametime*3)*2,c_white,1);