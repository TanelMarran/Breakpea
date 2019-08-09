var how_many_monsters = 40+min(25,floor(global.points/50)*5);
repeat(ceil(abs(instance_number(obj_enemy)-how_many_monsters)*0.1)) {
	while(true) {
		var randx = irandom_range(320,320+room_size);
		var randy = irandom_range(320,320+room_size);
		var _list = ds_list_create();
		var count = collision_circle_list(randx,randy,50,obj_enemy,false,true,_list,false)*2;
		ds_list_destroy(_list);
		if(point_distance(randx,randy,obj_player.x,obj_player.y) > 50 && irandom(count) == 0) {
			break;
		}
	}
	instance_create_layer(randx,randy,"Instances",obj_cactus);
}