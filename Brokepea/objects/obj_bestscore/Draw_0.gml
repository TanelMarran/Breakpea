/// @description Insert description here
// You can write your code in this editor
if(obj_player.defeat_screen_flow <= 120) {
	surface_set_target(score_surface);
		draw_clear_alpha(c_white,0);
		for(var i = 1; i <= nmb_of_characters+1+2; i++) {
			if(i == 1 or i == nmb_of_characters+1+2) {
				draw_sprite(score_chars,11,i*(char_width+spacing),0);
			} else if(i == 1 or i == nmb_of_characters+2) {
				draw_sprite(score_chars,10,i*(char_width+spacing),0);
			} else {
				var number = string_char_at(string(round(points_displayed)),i-1);
				draw_sprite(score_chars,string_pos(number,numbers)-1,i*(char_width+spacing),0);
			}
		}
	surface_reset_target();

	var scale = 0.3;
	var actual_width = scale*surface_get_width(score_surface);
	var actual_height = scale*surface_get_height(score_surface);
	var centeronX = 160-actual_width/2;
	var centeronY = 480-actual_height/2;
		centeronX = target_x-actual_width/2;
		centeronY = target_y-actual_height/2;
		if(playsound) {
			var sound = choose(snd_button1,snd_button2,snd_button3,snd_button4);
			audio_sound_pitch(sound,random_range(0.5,0.55));
			audio_play_sound_at(sound,x,y,0,150,300,0.4,false,4);
			playsound = !playsound;
		}


	draw_surface_ext(score_surface,camera_get_view_x(view_camera[0])+centeronX,camera_get_view_y(view_camera[0])+centeronY,scale,scale,0,color_crown,1);
}