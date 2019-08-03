/// @description Insert description here
// You can write your code in this editor
game_time++;
game_freeze = max(0,game_freeze-1);



//Create mosnters and items
if(gametime % 60*10 == 0) {
	create_monster();
}

if(gametime % 60*10 == 0) {
	create_item();
}