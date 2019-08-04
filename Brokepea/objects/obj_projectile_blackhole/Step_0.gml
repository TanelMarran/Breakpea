/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

depth = -y;

pushout();


collision_circle_list(x,y,pull_radius,obj_enemy,false,true,grabbed_ids,false);
for(var i = 0; i < min(ds_list_size(grabbed_ids),15); i++) {
	with(ds_list_find_value(grabbed_ids,i)) {
		if(!defeated) {
				var distance_to_blackhole = point_distance(x,y,other.x,other.y)/other.pull_radius*0.3+0.6
				movement_vector_add(other.pull_power*distance_to_blackhole,point_direction(x,y,other.x,other.y));
			}
		}
	}
ds_list_clear(grabbed_ids);

lifetime--;
if(lifetime == 0) {
instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;