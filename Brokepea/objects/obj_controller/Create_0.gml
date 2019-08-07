/// @description Insert description here
// You can write your code in this editor
game_time = 0;
game_freeze = 0;

application_surface_draw_enable(false);
uniform_Size = shader_get_uniform(shd_pixelate,"Size");

init_particles();

if(room == rm_play) {
	repeat(50) {
		create_monster()
	}

	repeat(25) {
		create_item()
	}
}