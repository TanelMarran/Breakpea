/// @description Insert description here
// You can write your code in this editor
var centeronX = 160;
var centeronY = 480;
if(obj_player.defeat_screen_flow <= 60) {
	centeronX = target_x;
	centeronY = target_y;
	if(playsound) {
		var sound = choose(snd_button1,snd_button2,snd_button3,snd_button4);
		audio_sound_pitch(sound,random_range(0.8,0.85));
		audio_play_sound_at(sound,x,y,0,150,300,0.4,false,4);
		playsound = !playsound;
	}
	x = camera_get_view_x(view_camera[0])+target_x;
	y = camera_get_view_y(view_camera[0])+target_y;
}
draw_sprite_ext(sprite_index,0,camera_get_view_x(view_camera[0])+centeronX,camera_get_view_y(view_camera[0])+centeronY+hovering*dsin(gametime*1.5)*5,image_xscale,image_yscale,hovering*dsin(gametime*2)*4,c_white,1);
