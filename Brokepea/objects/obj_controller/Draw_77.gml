/// @description Insert description here
// You can write your code in this editor
shader_set(shd_pixelate);
shader_set_uniform_f(uniform_Size,1,640,640);
	draw_surface_ext(application_surface,0,0,2,2,0,c_white,1);
shader_reset();