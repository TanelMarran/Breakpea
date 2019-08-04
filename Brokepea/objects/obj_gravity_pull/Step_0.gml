/// @description Insert description here
// You can write your code in this editor
size = size-0.02;
if(size <= 0) {
	instance_destroy();
}
image_xscale = size;
image_yscale = size;

depth = -y;

if(instance_exists(parent)) {
	t_axis_x = parent.x-x;
	t_axis_y = parent.y-y;
}

apply_movement();

x += axis_x;
y += axis_y;
