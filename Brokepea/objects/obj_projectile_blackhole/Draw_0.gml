/// @description Insert description here
// You can write your code in this editor
image_speed = 1+min(point_distance(0,0,axis_x,axis_y),2)/2*0.5;
for(var i = 0; i < nmb_of_orbs; i++) {
	orbs[i].x = other.x + lengthdir_x(active_radius,gametime+i*360/nmb_of_orbs);
	orbs[i].y = other.y + lengthdir_y(active_radius,gametime+i*360/nmb_of_orbs);
}

draw_shadow();
draw_sprite_ext(sprite_index,image_index,x,y-z+dsin(gametime*2)*4,image_xscale,image_yscale,dsin(gametime*3)*2,c_white,1);

x = clamp(x,320,960);
y = clamp(y,320,960);