/// @description Insert description here
// You can write your code in this editor
if(collision_point(mouse_x,mouse_y,object_index,false,false) && obj_player.defeat_screen_flow <= 60) {
	if(hovering == false) {
		var sound = choose(snd_button1,snd_button2,snd_button3,snd_button4);
		audio_sound_pitch(sound,random_range(0.5,0.6));
		audio_play_sound_at(sound,x,y,0,150,300,0.4,false,4);
	}
	hovering = true;
	if mouse_check_button_pressed(mb_left) {
		var sound = choose(snd_button1,snd_button2,snd_button3,snd_button4);
		audio_sound_pitch(sound,random_range(1,1.2));
		audio_play_sound_at(sound,x,y,0,150,300,0.4,false,4);
		global.points = 0;
		obj_score.points_displayed = 0;
		room_goto(rm_play);
		randomize();
	}
} else {
	hovering = false;
}