/// @description Insert description here
// You can write your code in this editor

init_movement();
movement_speed = 0.4;
aggro_speed = 1;
aggro_anim_speed = 1.2;
movement_dir = 0;
wander_range = 75;
aggro_range = 50;
pursuing = false;
damage_flash = 0;

shadow_height = 8;
shadow_width = sprite_width*0.8;

sprite_idle = spr_cactus_idle;
sprite_pursue = spr_cactus_walk;
sprite_defeat = spr_cactus_defeat;
defeated = false;

hp = 100;
