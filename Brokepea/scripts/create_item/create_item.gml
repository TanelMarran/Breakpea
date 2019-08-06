var amount_of_items = 20+(global.points > 1250)*2;
if(instance_number(obj_pickup) < amount_of_items) {
	repeat(round(abs(instance_number(obj_enemy)-amount_of_items)*0.1)) {
		var randint = irandom(100);
		var needed = 0;
		
		if(randint < 35) {
			object = obj_rock;
			needed = 0;
		} else if (randint < 60) {
			object = obj_sword;
			needed = 1;
		} else if (randint < 80) {
			object = obj_bow;
			needed = 2;
		} else if (randint < 87) {
			object = obj_eightball;
			needed = 4;
		} else {
			object = obj_potion;
			needed = 5;
		}

		var randx = irandom_range(320,960);
		var randy = irandom_range(320,960);
		var i = 0;
		while(count < needed or i != 20) {
			//Count number of monsters around random pos
			var _list = ds_list_create();
			var count = collision_circle_list(randx,randy,100,obj_enemy,false,true,_list,false);
			ds_list_destroy(_list);
	
			_list = ds_list_create();
			count = count-0.5*collision_circle_list(randx,randy,125,obj_pickup,false,true,_list,false);
			ds_list_destroy(_list);
			i++;
		}

		instance_create_layer(randx,randy,"Instances",object);
		break;
		
	}
}