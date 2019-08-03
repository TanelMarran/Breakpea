/// @description Insert description here
// You can write your code in this editor

if(gamefreeze != 0) {
	exit;
}

damage_flash = max(0,damage_flash-1);
pursuing = false;
depth = -y;

event_inherited();

dist_to_player = point_distance(x,y,obj_player.x,obj_player.y);

if(!defeated) {
	//Pursue player
	if(dist_to_player < wander_range) {
		movement_dir = point_direction(x,y,obj_player.x,obj_player.y);

		var chosen_speed = movement_speed;

		if (dist_to_player < aggro_range) {
			chosen_speed = aggro_speed;
			pursuing = true;
		}

		chosen_speed = min(chosen_speed,dist_to_player);

		t_axis_x = lengthdir_x(chosen_speed,movement_dir);
		t_axis_y = lengthdir_y(chosen_speed,movement_dir);
	} else { //Wander
	
		movement_dir = irandom(360);
		var rand = irandom(100);
		if(rand = 0) {
			t_axis_x = lengthdir_x(movement_speed,movement_dir);
			t_axis_y = lengthdir_y(movement_speed,movement_dir);
		}
		if(rand = 1) {
			t_axis_x = 0;
			t_axis_y = 0;
		}
	}
}

apply_movement();

x += axis_x;
y += axis_y;

if (hp <= 0 && !defeated) {
	enemy_defeated();
}
if(defeated and z <= 9 and axis_z < 0) {
	instance_destroy();
}