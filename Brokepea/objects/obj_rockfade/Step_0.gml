/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

apply_movement();

x += axis_x;
y += axis_y;

image_alpha = image_alpha-0.1;
image_angle += rot;

if(image_alpha <= 0) {
	instance_destroy();
}