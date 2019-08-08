/// @description Insert description here
// You can write your code in this editor
lifetime = 60*30;
init_shadow(10,10);
vine_radius = 100;
range_alpha = 0;
spr_sprout = spr_flower_sprout;
spr_idle = spr_flower_idle;
spr_submerge = spr_flower_submerge;
grabbed_ids = ds_list_create();
size = random_range(0.8,1.2);
image_xscale = choose(-1,1);
image_yscale *= 1.2+random_range(-0.5,0.5);
image_xscale *= 1.2+random_range(-0.5,0.5);
grabbing = false;
z = 0;

var collide = collision_circle(x,y,2,obj_flower_wall,false,true);
if(collide) {
	instance_destroy(collide);
}

var sound = choose(snd_flowergrow1,snd_flowergrow2);
audio_sound_pitch(sound,random_range(0.55,1.65));
audio_play_sound_at(sound,x,y,z,80,10,0.6,false,2);
sound_white = 0;