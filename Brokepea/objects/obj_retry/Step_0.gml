/// @description Insert description here
// You can write your code in this editor
hovering = false;
if(collision_point(mouse_x,mouse_y,object_index,false,false)) {
	hovering = true;
	if mouse_check_button_pressed(mb_left) {
		room_goto(rm_play);
		randomize();
	}
}