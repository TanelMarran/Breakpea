/// @description Insert description here
// You can write your code in this editor
lifetime = 60*20;
init_shadow(8,6);
vine_radius = 200;
range_alpha = 0;
sprouted = false;
z = 0;

var sound = choose(snd_flowergrow1,snd_flowergrow2);
audio_sound_pitch(sound,random_range(0.55,1.65));
audio_play_sound_at(sound,x,y,z,80,10,0.6,false,2);