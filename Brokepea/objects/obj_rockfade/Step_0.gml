/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

apply_movement();

x += axis_x;
y += axis_y;

image_alpha = image_alpha-0.04;
image_angle += rot;

if(z == 0) {
	axis_z = 4;
}

if(image_alpha <= 0) {
	instance_destroy();
}