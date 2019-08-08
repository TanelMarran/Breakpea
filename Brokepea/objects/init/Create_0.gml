/// @description Insert description here
// You can write your code in this editor
macros();

surface_resize(application_surface, 320, 320);
randomize();
audio_falloff_set_model(audio_falloff_linear_distance);

global.points = 0;
global.highscore = 0;
read_score();

room_goto_next();