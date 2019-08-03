with(obj_shadow) {
	draw_set_alpha(shadow_alpha);
	draw_set_color(color_shadow);
	draw_ellipse(other.x-other.shadow_width/2,other.y-other.shadow_height/2,other.x+other.shadow_width/2,other.y+other.shadow_height/2,false);
	draw_set_alpha(1);
}