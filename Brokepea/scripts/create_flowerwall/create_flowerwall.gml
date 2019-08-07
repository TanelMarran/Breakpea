var variance = 10
repeat(irandom(2)) {
	instance_create_layer(x+random_range(-variance,variance),y+random_range(-variance,variance),"Instances",obj_flower_wall);
}