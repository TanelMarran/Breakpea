/// @description Insert description here
// You can write your code in this editor
if(z = 0 || (place_meeting(x,y,obj_enemy) && z <= 22)) {
	var _list = ds_list_create();
	collision_circle_list(x,y,15,obj_enemy,false,true,_list,false);
	for(var i = 0; i < ds_list_size(_list); i++) {
		with(ds_list_find_value(_list,i)) {
				apply_damage();
				movement_vector_add(3,point_direction(other.x,other.y,x,y));
				if (other.frozen == false) {
					gamefreeze = 5;
					other.frozen = true;
				}
			}
		}
	ds_list_clear(_list);
	instance_destroy();
}

if(fly_time == 0) {
	z_gravity = 0.8;
} else {
	fly_time--;
}


apply_movement();

x += axis_x;
y += axis_y;