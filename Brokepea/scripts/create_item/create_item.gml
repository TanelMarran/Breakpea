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
		} else if (randint < 78) {
			object = obj_bow;
			needed = 2;
		} else if (randint < 84) {
			object = obj_eightball;
			needed = 4;
		} else if (randint < 91) {
			object = obj_potion;
			needed = 4;
		} else {
			object = obj_eightball;
			needed = 5;
		}

		var randx = 0; 
		var randy = 0;
		var count = needed-1;
		var _list = ds_list_create();
		var i = 0
		while(true) {
			//Count number of monsters around random pos
			randx = irandom_range(320,320+room_size);
			randy = irandom_range(320,320+room_size);
			count = collision_circle_list(randx,randy,100,obj_enemy,false,true,_list,false);
			
			count = count-0.5*collision_circle_list(randx,randy,125,obj_pickup,false,true,_list,false);
			ds_list_clear(_list);
			i++;
			if(count < needed or i != 20) {
				break;
			}
		}
		ds_list_destroy(_list);

		instance_create_layer(randx,randy,"Instances",object);
		break;
	}
}