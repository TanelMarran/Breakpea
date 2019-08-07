/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

audio_emitter_position(emitter,x,y,0);

var rot_modif = 1+(1-(active_radius/100))*rot_increase_amount;
rot_angle += rot_speed*rot_modif;

depth = -y;

pushout();

if(lifetime <= 0) {
	pull_radius = 0;
	active_radius -= max((100-active_radius)*radius_speed,0.5);
} else {
	active_radius += (pull_radius-active_radius)*radius_speed;
	part_emitter_region(global.partsys , partemit, x - active_radius, x + active_radius, y - active_radius, y + active_radius, ps_shape_ellipse, ps_distr_invgaussian);
}

if(lifetime > 0 && collision_circle(x,y,active_radius,obj_enemy,false,true)) {
	collision_circle_list(x,y,active_radius,obj_enemy,false,true,grabbed_ids,false);
	for(var i = 0; i < min(ds_list_size(grabbed_ids),15); i++) {
		with(ds_list_find_value(grabbed_ids,i)) {
			if(!defeated && !pulled) {
					var distance_to_blackhole = clamp(point_distance(x,y,other.x,other.y)/other.active_radius,0.4,1);
					movement_vector_add(other.pull_power*distance_to_blackhole,point_direction(x,y,other.x,other.y));
					pulled = true;
				}
			}
		}
	ds_list_clear(grabbed_ids);
}

lifetime--;

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