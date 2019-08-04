/// @description Insert description here
// You can write your code in this editor
points_displayed = global.highscore
nmb_of_characters = string_length(string(round(points_displayed)));
score_width = (nmb_of_characters+2+2)*(char_width+spacing);
surface_resize(score_surface,score_width,sprite_height);