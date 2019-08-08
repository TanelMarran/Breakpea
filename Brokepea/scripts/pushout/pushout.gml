var i = 0
if((object_index == obj_cactus && !defeated && flowerslow == false) or object_index != obj_cactus) {
	while(instance_place(x,y,obj_pushout)) {
		with(instance_place(x,y,obj_pushout)) {
			x += (x-other.x)*0.01;
			y += (y-other.y)*0.01;
		}
		i++;
		if(i == 50) {
			break;
		}
	}
}