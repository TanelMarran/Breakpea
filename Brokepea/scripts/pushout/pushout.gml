var i = 0
while(instance_place(x,y,obj_pushout)) {
	with(instance_place(x,y,obj_pushout)) {
		if(!defeated) {
			x += (x-other.x)*0.01;
			y += (y-other.y)*0.01;
		}
	}
	i++;
	if(i == 50) {
		break;
	}
}