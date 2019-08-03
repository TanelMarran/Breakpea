/// @description Insert description here
// You can write your code in this editor
draw_shadow();
draw_sprite_ext(sprite_index,image_index,x+random_range(-1,1),y-z+random_range(-1,1),1,1,dsin(gametime*7)*25,c_white,1);