/// @description Insert description here
// You can write your code in this editor
game_freeze = max(0,game_freeze-1);
if(gamefreeze != 0) {
	exit;
}

game_time++;

//Create monsters and items
if(gametime % 60*10 == 0) {
	create_monster();
	if(irandom(100) = 1) {
		var sound = snd_monsterwander1;
		audio_sound_pitch(sound,random_range(0.75,1.25));
		audio_play_sound_at(sound,obj_enemy.x,obj_enemy.y,0,150,300,0.4,false,4);
	}
}

if(gametime % 60*10 == 0) {
	create_item();
}