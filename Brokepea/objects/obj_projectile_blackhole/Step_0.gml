/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

audio_emitter_position(emitter,x,y,0);

active_radius += (pull_radius-active_radius)*radius_speed;

depth = -y;

pushout();


collision_circle_list(x,y,active_radius,obj_enemy,false,true,grabbed_ids,false);
for(var i = 0; i < min(ds_list_size(grabbed_ids),15); i++) {
	with(ds_list_find_value(grabbed_ids,i)) {
		if(!defeated) {
				var distance_to_blackhole = point_distance(x,y,other.x,other.y)/other.active_radius//*0.3+0.6
				if(distance_to_blackhole > 0.3) {
					movement_vector_add(other.pull_power*distance_to_blackhole*0.3+0.6,point_direction(x,y,other.x,other.y));
				}
			}
		}
	}
ds_list_clear(grabbed_ids);

lifetime--;
if(lifetime == 0) {
	pull_radius = 0;
	radius_speed = 0.09;
} else {
	/*if (irandom(30)) {
		var dir = random(360);
		with(instance_create_layer(x+lengthdir_x(active_radius*1.1,dir),y+lengthdir_y(active_radius*1.1,dir),"Instances",obj_gravity_pull)) {
			size = random_range(0.7,1);
			parent = other;
		}
	}*/
}

if(lifetime <= 0) {
	image_xscale *= 0.92;
	image_yscale *= 0.95;
}

if(active_radius < 10 && lifetime <= 0) {
	instance_destroy();
}

apply_movement();

x += axis_x;
y += axis_y;