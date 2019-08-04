///defeat_puff(x,y)
repeat(3) {
	var randx = x+random_range(-sprite_get_xoffset(sprite_index),sprite_width);
	var randy = y+random_range(-sprite_get_yoffset(sprite_index),sprite_height);
	with(instance_create_layer(randx,randy,"Instances",obj_bigdust)) {
		movement_vector_set_ext(0.4,irandom(360),0.01);
		image_xscale *= 0.5;
		image_yscale *= 0.5;
		image_angle = irandom(360);
		lifetime = irandom_range(60,80);
		image_speed = random_range(0.7,0.9);
		image_index = random(3);
	}
}