/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

if(z == 0 && !draw_other) {
	draw_other = instance_create_layer(x,y,"Instances",obj_flower);
	depth = 10000;
}
if(!draw_other) {
	depth = -y;
}

image_angle = image_angle+image_angle*0.12;

apply_movement();
x += axis_x;
y += axis_y;