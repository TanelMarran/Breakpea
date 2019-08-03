/// @description Insert description here
// You can write your code in this editor
camera = camera_create_view(x,y,320,320);
instance_create_layer(x,y,"Instances",obj_shadow);

view_set_camera(0,camera);