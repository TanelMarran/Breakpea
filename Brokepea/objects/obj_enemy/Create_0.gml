/// @description Insert description here
// You can write your code in this editor

init_movement();
superboost = (global.points>500 && irandom(8)==1)*80;
movement_speed = 0.4;
aggro_speed = 1+min(0.16,floor(global.points/750)*0.08);
//aggro_anim_speed = 1.2;
movement_dir = 0;
wander_range = 75+irandom_range(-8,5)+superboost;
aggro_range = 50+irandom_range(-10,10)+floor(global.points/250)*1+superboost;
pursuing = false;
damage_flash = 0;

arrowed = false;
arrowed_angle = 0;
shadow_height = 8;
shadow_width = sprite_width*0.8;

sprite_idle = spr_cactus_idle;
sprite_pursue = spr_cactus_walk;
sprite_defeat = spr_cactus_defeat;
defeated = false;

image_tween = 0;
image_index_last = 0;
superboost_color = make_color_rgb(214,170,94);

hp = 100;
