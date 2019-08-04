var how_many_monsters = 70
repeat(ceil(abs(instance_number(obj_enemy)-how_many_monsters)*0.1)) {
	while(true) {
		var randx = irandom_range(320,960);
		var randy = irandom_range(320,960);
		if(point_distance(randx,randy,obj_player.x,obj_player.y) > 50) {
			break;
		}
	}
	instance_create_layer(randx,randy,"Instances",obj_cactus);
}
trace(instance_number(obj_enemy),instance_number(obj_pickup));