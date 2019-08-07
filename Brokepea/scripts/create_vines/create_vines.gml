with(instance_create_layer(x,y,"Instances",obj_flower_wall_creator)) {
	movement_vector_add(1,point_direction(x,y,argument[0],argument[1]));
}
sprouted = true;