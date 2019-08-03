/// @description Insert description here
// You can write your code in this editor'

if(gamefreeze != 0) {
	exit;
}

image_angle = aim_angle-swipe_angle/2+swipe_angle*swipe_progress;

swipe_progress += (1-swipe_progress)*swipe_speed;

apply_movement();

x += axis_x;
y += axis_y;


with(instance_place(x,y,obj_enemy)) {
	hp -= other.damage;
	if (other.frozen == false) {
		gamefreeze = 5;
		other.frozen = true;
	}
}

if(swipe_progress > 0.95) {
	hang_time--;
	if(hang_time == 0) {
		instance_destroy();
	}
}