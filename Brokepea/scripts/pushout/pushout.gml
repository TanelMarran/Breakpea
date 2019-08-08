var i = 0
var type = obj_pushout;
if(argument_count > 0) {
	type = argument[0];
}
if(!defeated) {
	while(instance_place(x,y,type)) {
		with(instance_place(x,y,type)) {
			x += (x-other.x)*0.01;
			y += (y-other.y)*0.01;
		}
		i++;
		if(i == 50) {
			break;
		}
	}
}