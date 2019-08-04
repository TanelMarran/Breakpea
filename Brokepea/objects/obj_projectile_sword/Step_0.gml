/// @description Insert description here
// You can write your code in this editor'

if(gamefreeze != 0) {
	exit;
}

image_angle = aim_angle-swipe_angle/2+swipe_angle*swipe_progress;

swipe_progress += (1-swipe_progress)*swipe_speed;

apply_movement();

x += axis_x;
y += axis_y;


var _list = ds_list_create();
instance_place_list(x,y,obj_enemy,_list,false);
collision_circle_list(x,y,5,obj_enemy,false,true,_list,false);
for(var i = 0; i < ds_list_size(_list); i++) {
	with(ds_list_find_value(_list,i)) {
		if(!defeated) {
			if(ds_list_find_index(other.damaged_ids,id) == -1) {
				other.combo++;
				add_points(defeatpoints*min(4,1+floor(other.combo/2)));
				ds_list_add(other.damaged_ids,id);
				apply_damage();
				movement_vector_add(3,other.aim_angle);
				if (other.frozen == false) {
					gamefreeze = 5;
					other.frozen = true;
					apply_camera_shake(3,3,0.2,0.2);
				}
			}
		}
	}
}
ds_list_destroy(_list);

if(swipe_progress > 0.95) {
	hang_time--;
	if(hang_time == 0) {
		instance_destroy();
	}
}