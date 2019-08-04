/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}
fly_time--;
frozen = max(0,frozen-1);

var _list = ds_list_create();
instance_place_list(x,y,obj_enemy,_list,false);
collision_circle_list(x,y,5,obj_enemy,false,true,_list,false);
for(var i = 0; i < ds_list_size(_list); i++) {
	with(ds_list_find_value(_list,i)) {
		if(!defeated) {
			apply_damage();
			movement_vector_add(3,other.aim_angle);
			if (other.frozen == 0 && distance_to_object(obj_player) < 320) {
				gamefreeze = 10;
				other.frozen = other.froze_time_max;
				apply_camera_shake(2,2,0.2,0.2);
			}
		}
	}
}
ds_list_clear(_list);

if(fly_time == 0) {
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;