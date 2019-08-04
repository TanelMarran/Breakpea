/// @description Insert description here
// You can write your code in this editor
if(gamefreeze != 0) {
	exit;
}

depth = -y;

if(z = 0 || (place_meeting(x,y,obj_enemy) && z <= 7)) {
	var _list = ds_list_create();
	collision_circle_list(x,y,blast_radius,obj_enemy,false,true,_list,false);
	potion_splash();
	for(var i = 0; i < ds_list_size(_list); i++) {
		with(ds_list_find_value(_list,i)) {
				if(!defeated) {
					other.combo++;
					add_points(defeatpoints*min(4,1+floor(other.combo/4)));
					apply_damage();
					movement_vector_add(3,point_direction(other.x,other.y,x,y));
					if (other.frozen == false) {
						gamefreeze = 5;
						other.frozen = true;
					}
				}
			}
		}
	ds_list_destroy(_list);
	apply_camera_shake(6,6,0.5,0.5);
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;