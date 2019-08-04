/// @description Insert description here
// You can write your code in this editor
camera = camera_create_view(x,y,320,320);

camera_xshake = 0;
camera_yshake = 0;
camera_xshake_deacc = 0.2;
camera_yshake_deacc = 0.2;

instance_create_layer(x,y,"Instances",obj_shadow);

view_set_camera(0,camera);