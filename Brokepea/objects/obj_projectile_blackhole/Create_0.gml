/// @description Insert description here
// You can write your code in this editor
event_inherited();
init_shadow(sprite_width,8);
grabbed_ids = ds_list_create();
acc_amount = 0.03;
deacc_amount = 0.03;
lifetime = 60*8;
pull_power = 0.6;
pull_radius = 100;
active_radius = 0;
radius_speed = 0.05;
z_gravity = 0;
color_magnet = make_color_rgb(206*1.2,65*1.2,232*1.2);


nmb_of_orbs = 3;
orbs = 0;
for(var i = 0; i < nmb_of_orbs; i++) {
	orbs[i] = instance_create_layer(x,y,"Instances",obj_projectile_blackorb);
}