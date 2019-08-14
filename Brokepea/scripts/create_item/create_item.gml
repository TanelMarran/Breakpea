var amount_of_items = 20+(global.points > 1250)*2;
if(instance_number(obj_pickup) < amount_of_items) {
	repeat(round(abs(instance_number(obj_enemy)-amount_of_items)*0.1)) {
		var c1, c2, c3, c4 ,c5, c6;
		c1 = 32; //Rock
		c2 = 25; //Sword
		c3 = 25; //Bow
		c4 = 15; //Eightball
		c5 = 20; //Potion
		c6 = 14*(global.points > 500); //Seed
		var randint = irandom(c1+c2+c3+c4+c5+c6);
		var needed = 0;
		var object = obj_rock;
		
		if(randint < c1) {
			object = obj_rock;
			needed = 0;
		} else if (randint < c1+c2) {
			object = obj_sword;
			needed = 1;
		} else if (randint < c1+c2+c3) {
			object = obj_bow;
			needed = 2;
		} else if (randint < c1+c2+c3+c4) {
			object = obj_eightball;
			needed = 4;
		} else if (randint < c1+c2+c3+c4+c5) {
			object = obj_potion;
			needed = 4;
		} else if (randint < c1+c2+c3+c4+c5+c6) {
			object = obj_seed;
			needed = 3;
		}

		repeat(1+(object==obj_seed && instance_number(obj_seed) == 0)) {
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
		}
		break;
	}
}