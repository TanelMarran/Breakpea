/// @description Insert description here
// You can write your code in this editor
shader_set(shd_swordswing);
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,last_angle,c_white,1);
shader_reset();
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,1);