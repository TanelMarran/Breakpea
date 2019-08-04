repeat(10) {
	var randx = irandom_range(320,960);
	var randy = irandom_range(320,960);
	var object = noone;

	//Count number of monsters around random pos
	var _list = ds_list_create();
	var count = collision_circle_list(randx,randy,100,obj_enemy,false,true,_list,false);
	ds_list_destroy(_list);
	
	_list = ds_list_create();
	count = count-collision_circle_list(randx,randy,125,obj_pickup,false,true,_list,false);
	ds_list_destroy(_list);

	object = choose(obj_sword,obj_potion,obj_rock,obj_bow,obj_eightball);

	if object != noone {
		instance_create_layer(randx,randy,"Instances",object);
		break;
	}
}