global.partsys = part_system_create();
part_system_depth(global.partsys, -10000);

global.part_gravity = part_type_create();

var p = global.part_gravity;
part_type_sprite(p,spr_gravity_pull,false,false,false);
part_type_size(p,0.9,1.1,-0.02,0.01);
part_type_scale(p, 1, 1);
part_type_speed(p, 0.1, 0.3, -0.05, 0);
part_type_direction(p, 0, 359, 0, 0);
part_type_orientation(p, 0, 359, 0, 0, 1);
part_type_life(p, 40, 60);