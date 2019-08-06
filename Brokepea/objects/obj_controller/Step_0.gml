/// @description Insert description here
// You can write your code in this editor
game_freeze = max(0,game_freeze-1);
if(gamefreeze != 0) {
	exit;
}

game_time++;

if(room == rm_play) {
	//Create monsters and items
	if(gametime % 60*10 == 0) {
		create_monster();
	}

	if(gametime % 60*10 == 0) {
		create_item();
	}
}