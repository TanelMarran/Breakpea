///
repeat(5) {
	var randx = x+dcos(irandom(360))*blast_radius*0.25;
	var randy = y-dsin(irandom(360))*blast_radius*0.25;
	with(instance_create_layer(randx,randy,"Instances",obj_bigdust)) {
		movement_vector_set_ext(4,irandom(360),0.3);
		image_xscale = 0.8;
		image_yscale = 0.8;
		image_angle = irandom(360);
		lifetime = irandom_range(60,80);
		image_speed = random_range(0.7,0.9);
		image_index = random(3);
	}
}

repeat(15) {
	var randx = x+dcos(irandom(360))*blast_radius;
	var randy = y-dsin(irandom(360))*blast_radius;
	with(instance_create_layer(randx,randy,"Instances",obj_effect)) {
		sprite_index = spr_crackers
		movement_vector_set_ext(0.2,irandom(360),0.01);
		image_xscale = 0.8;
		image_yscale = 0.8;
		image_angle = irandom(360);
		image_speed = random_range(0.9,1.2);
		image_index = random(3);
	}
}