///apply_camera_shake(xshake,yshake,xdeacc,ydeacc)
with(obj_camera) {
	camera_xshake = max(argument[0],camera_xshake);
	camera_yshake = max(argument[1],camera_yshake);
	camera_xshake_deacc = argument[2];
	camera_yshake_deacc = argument[3];
}