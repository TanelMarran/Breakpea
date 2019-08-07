var dist = point_distance(x,y,argument[0],argument[1]);
var nmb_of_walls = floor(dist/20);
with(instance_create_layer(x,y,"Instances",obj_flower_wall_creator)) {
	movement_vector_add(1,point_direction(x,y,argument[0],argument[1]));
	lifetime = nmb_of_walls*10;
	parent = other;
}
if(sprouted != 2) {
	sprouted = true;
}