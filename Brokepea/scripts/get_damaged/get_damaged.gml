enemy_slowdown = 1;
var _list = ds_list_create();
var count = collision_circle_list(x,y,10,obj_enemy,false,true,_list,false);
ds_list_clear(_list);
var _stamina_buildup = 0;
if (count == 0) {
	stamina_buildup *= 0.9;
} else {
	repeat(count) {
		enemy_slowdown = min(enemy_slowdown_max,enemy_slowdown-0.1)
	}
	_stamina_buildup += stamina_buildup_speed_max/3;
}


_stamina_buildup = min(_stamina_buildup,stamina_buildup_speed_max);
stamina_buildup += _stamina_buildup;

if(stamina_buildup > 100) {
	game_restart()
}