/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

depth = -y;
if(z = 0 || (instance_place(x,y,obj_enemy) && z <= 22)) {
	var _list = ds_list_create();
	instance_place_list(x,y,obj_enemy,_list,false);
	for(var i = 0; i < 1; i++) {
		with(ds_list_find_value(_list,i)) {
			if(!defeated) {
				apply_damage();
				movement_vector_add(1,point_direction(0,0,other.axis_x,other.axis_y));
				if (other.frozen == false) {
					gamefreeze = 5;
					other.frozen = true;
				}
				instance_destroy(other);
			}
		}
	}
}

if(fly_time == 0) {
	z_gravity = 0.8;
} else {
	fly_time--;
}


apply_movement();

x += axis_x;
y += axis_y;