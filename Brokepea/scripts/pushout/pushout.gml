var i = 0
while(collision_ellipse(x-shadow_width/2,y-shadow_height/2,x+shadow_width/2,y+shadow_height/2,obj_pushout,false,true)) {
	with(collision_ellipse(x-shadow_width/2,y-shadow_height/2,x+shadow_width/2,y+shadow_height/2,obj_pushout,false,true)) {
		x += (x-other.x)*0.01;
		y += (y-other.y)*0.01;
	}
	i++;
	if(i == 50) {
		break;
	}
}