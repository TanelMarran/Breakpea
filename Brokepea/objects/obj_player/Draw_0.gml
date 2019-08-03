/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_player_idle;
if(carry != noone) {
	sprite_index = spr_player_idle_carry;
}
image_speed = 1;
var offset = 0;

var dist = point_distance(0,0,axis_x,axis_y);
if(dist != 0) {
	sprite_index = spr_player_walk;
	if(carry != noone) {
		sprite_index = spr_player_walk_carry;
	}
	image_speed = 1+0.2*min(1,dist/movement_speed);
	offset = -image_index*1.2;
}

if(carry != noone) {
	draw_sprite_ext(carry.sprite_index,carry.image_index,carry.x,carry.y+offset-1,1,1,movement_angle*carry_magnitude*10+dsin(gametime*2.5)*10,c_white,1);
}

movement_angle = axis_x/movement_speed;

carry_x = lengthdir_x(carry_height,90+carry_magnitude*movement_angle)
carry_y = lengthdir_y(carry_height,90+carry_magnitude*movement_angle)

var shake = stamina_buildup/(stamina_max-25)*2;

image_speed *= (gamefreeze==0);
draw_shadow();
draw_sprite_ext(sprite_index,image_index,x+random_range(-shake,shake),y+offset+random_range(-shake,shake)-z,1,1,movement_angle*10,c_white,1);