/// @description Insert description here
// You can write your code in this editor
event_inherited();
init_shadow(sprite_width,8);
grabbed_ids = ds_list_create();
acc_amount = 0.03;
deacc_amount = 0.03;
lifetime = 60*8;
pull_power = 0.8;
pull_radius = 100;
active_radius = 0;
radius_speed = 0.05;
z_gravity = 0;
rot_angle = irandom(359);
rot_increase_amount = 8;
rot_speed = 1;
emitter = audio_emitter_create();
audio_emitter_position(emitter,x,y,0);
audio_play_sound_on(emitter,snd_gravity,false,2);


nmb_of_orbs = 4;
orbs = 0;
for(var i = 0; i < nmb_of_orbs; i++) {
	orbs[i] = instance_create_layer(x,y,"Instances",obj_projectile_blackorb);
}

partemit = part_emitter_create(global.partsys);
part_emitter_region(global.partsys , partemit, x - active_radius, x + active_radius, y - active_radius, y + active_radius, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_stream(global.partsys, partemit, global.part_gravity, 1);