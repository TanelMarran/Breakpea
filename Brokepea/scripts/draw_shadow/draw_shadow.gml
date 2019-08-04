with(obj_shadow) {
	draw_set_alpha(shadow_alpha);
	draw_set_color(color_shadow);
	var height_ref = 150
	var height_modif = (height_ref-other.z)/height_ref
	draw_ellipse(other.x-other.shadow_width/2*height_modif,other.y-other.shadow_height/2*height_modif,other.x+other.shadow_width/2*height_modif,other.y+other.shadow_height/2*height_modif,false);
	draw_set_alpha(1);
}