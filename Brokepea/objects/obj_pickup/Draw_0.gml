/// @description Insert description here
// You can write your code in this editor
if(on_ground) {
	draw_shadow();
	draw_sprite_ext(sprite_index,image_index,x,y-dsin(rand_int+gametime*6)*3-3,1,1,dsin(rand_int+gametime*4)*4,c_white,1);
}