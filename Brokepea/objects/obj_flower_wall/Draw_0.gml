/// @description Insert description here
// You can write your code in this editor
if(sound_white > 0) {
	shader_set(shd_white);
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle+dsin(y+x*2+gametime*2)*15,c_white,1);
shader_reset();