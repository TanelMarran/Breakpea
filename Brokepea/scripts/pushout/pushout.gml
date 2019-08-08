var i = 0
if(!defeated) {
	if((object_index == obj_cactus && flowerslow == false)) {
		while(instance_place(x,y,obj_enemy)) {
			with(instance_place(x,y,obj_enemy)) {
				x += (x-other.x)*0.01;
				y += (y-other.y)*0.01;
			}
			i++;
			if(i == 50) {
				break;
			}
		}
	} else {
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
}