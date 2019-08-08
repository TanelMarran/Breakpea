/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

lifetime--;
depth = -y;

if(obj_player.carry != noone && obj_player.carry.object_index == obj_seed) {
	range_alpha += (1-range_alpha)*0.05;
} else {
	range_alpha = range_alpha*0.5;
}

image_angle = image_angle*0.9;
image_yscale += (size-image_yscale)*0.1;
image_xscale += (size-image_xscale)*0.1;

if(place_meeting(x,y,obj_pushout) && grabbing == false) {
	var oid = instance_place(x,y,obj_pushout);
	image_angle = -oid.axis_x*8;
	image_yscale = 1-oid.axis_y*0.1;
}
grabbing = false;

if(place_meeting(x,y,obj_enemy)) {
	var grabbed = instance_place(x,y,obj_enemy);
	with(grabbed) {
			if(!defeated && flowerslow == false) {
					flowerslow = array(other.x+irandom_range(-2,2),other.y+irandom_range(-2,2));
			}
			if(other.image_yscale < other.size*1.1) {
				other.image_yscale *= 1.4;
			}
			other.grabbing = true;
		}	
}

sound_white = max(0,sound_white-1);
if(irandom(instance_number(obj_flower_wall)*(10+(lifetime/max_lifetime)*70)) = 1) {
	var sound = choose(snd_floweridle,snd_floweridle2);
	audio_sound_pitch(sound,random_range(0.55,1.65));
	audio_play_sound_at(sound,x,y,z,220,320,1.1,false,4);
	image_angle = random_range(-15,15);
	image_yscale *= 1.5;
	image_xscale *= 1.5;
	sound_white = 5;
}


if(lifetime == 0) {
	var sound = snd_flowersubmerge;
	audio_sound_pitch(sound,random_range(0.55,1.65));
	audio_play_sound_at(sound,x,y,z,80,10,0.6,false,2);
	sprite_index = spr_submerge;
	image_index = 0;
}