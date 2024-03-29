/// @description Insert description here
// You can write your code in this editor
if(inview) {
	sprite_index = sprite_idle;
	image_speed = 1;
	var offset = 0;

	var dist = point_distance(0,0,axis_x,axis_y);
	if(pursuing) {
		sprite_index = sprite_pursue;
		image_speed = 1+0.2*min(1,dist/movement_speed);
		offset = -image_index*1.2;
	}

	var movement_angle = clamp(axis_x/movement_speed,-1.5,1.5);
	if(flowerslow != false) {
		movement_angle = 0;
	}

	image_speed *= (gamefreeze==0);
	draw_shadow();
	if(bluedrown_percent != 0) {
		shader_set(shd_bluedrown);
		shader_set_uniform_f(uniform_Percent,bluedrown_percent);
	}
	if(damage_flash != 0) {
		shader_set(shd_white);
		if(arrowed) {
			draw_sprite_ext(spr_arrowstrike,arrowed_angle/4,x,y+offset-z-4,random_range(0.95,1.05),random_range(0.95,1.05),arrowed_angle,c_white,1);
		}
	}
	if(defeated) {
		sprite_index = sprite_defeat;
	}

	var color = c_white;
	if(superboost != 0) {
		color = superboost_color;
	}
	draw_sprite_ext(sprite_index,image_index,x,y+offset-z,1,1,-movement_angle*10+defeated*(gametime+rand_angle),color,1);
	shader_reset();
}