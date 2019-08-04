enemy_slowdown = 1;
var _list = ds_list_create();
var increase_size = 1.5
var count = collision_ellipse_list(x-shadow_width/2*increase_size,y-shadow_height/2*increase_size,x+shadow_width/2*increase_size,y+shadow_height/2*increase_size,obj_enemy,false,true,_list,false);
ds_list_clear(_list);
var _stamina_buildup = 0;
if (count == 0) {
	stamina_buildup = max(0,stamina_buildup-(stamina_max-stamina_buildup)*0.02);
} else {
	repeat(count) {
		enemy_slowdown = min(enemy_slowdown_max,enemy_slowdown-0.1)
	}
	_stamina_buildup += stamina_buildup_speed_max/4;
}


_stamina_buildup = min(_stamina_buildup,stamina_buildup_speed_max);
stamina_buildup += _stamina_buildup;


if(stamina_buildup >= stamina_max && defeated = false) {
	defeated = true;
	axis_z = 5;
	z_gravity = 0.4;
	z = 0.1;
	damage_flash = 10;
	gamefreeze = 20;
	stamina_buildup = 0;
	carry = noone;
	movement_vector_add(random_range(1,2),irandom(360));
	acc_amount = 0.01;
	deacc_amount = 0.01;
	apply_camera_shake(5,5,0.5,0.5);
}

if(defeated = true && z == 0) {
	visible = false;
	global.points = 0;
	room_goto(rm_play);
	
}