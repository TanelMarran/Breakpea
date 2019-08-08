var variance = 10
var n = 3;
var dist = 10;
var angle = 360/n;
var _x, _y;
for(var i = 0; i < n; i++) {
	_x = x+lengthdir_x(dist+random_range(-variance,variance),angle*i*gametime)+random_range(-variance,variance);
	_y = y+lengthdir_y(dist+random_range(-variance,variance),angle*i*gametime)+random_range(-variance,variance);
	if(!place_meeting(_x,_y,obj_flower_wall)) {
		instance_create_layer(_x,_y,"Instances",obj_flower_wall);
	}
}