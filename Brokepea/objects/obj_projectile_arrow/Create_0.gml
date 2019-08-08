/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
init_shadow(sprite_width*0.3,sprite_width*0.3);
fly_time = 30;
acc_amount = 0.2;
deacc_amount = 0.2;
frozen = 0;
froze_time_max = 10;
aim_angle = 0;
combo = 0;
z_gravity = 0;

trail_length = 20;
trail = ds_list_create();
color_gravity = make_color_rgb(206,65,232);