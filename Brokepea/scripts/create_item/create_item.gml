repeat(10) {
	var randx = irandom(room_width);
	var randy = irandom(room_height);
	var object = noone;

	//Count number of monsters around random pos
	var _list = ds_list_create();
	var count = collision_circle_list(randx,randy,100,obj_enemy,false,true,_list,false);
	ds_list_destroy(_list);
	
	_list = ds_list_create();
	count = count-collision_circle_list(randx,randy,125,obj_pickup,false,true,_list,false);
	ds_list_destroy(_list);

	if (count > 2 && irandom(40)) {
		object = obj_rock;
	}

	if (count > 3 && irandom(20)) {
		object = obj_potion;
	}
	
	if count > 4 {
		object = obj_potion;
	}

	if object != noone {
		instance_create_layer(randx,randy,"Instances",object);
		break;
	}
}