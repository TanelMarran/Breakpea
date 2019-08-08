var variance = 10
var n = 3;
var dist = 10;
var angle = 360/n;
for(var i = 0; i < n; i++) {
	instance_create_layer(x+lengthdir_x(dist+random_range(-variance,variance),angle*i*gametime),y+lengthdir_y(dist+random_range(-variance,variance),angle*i*gametime)+random_range(-variance,variance),"Instances",obj_flower_wall);
}