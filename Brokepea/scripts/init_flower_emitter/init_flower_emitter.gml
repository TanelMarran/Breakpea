partemit = part_emitter_create(global.partsys);
var range = 30;
part_emitter_region(global.partsys , partemit, x - range, x + range, y - range - 7, y + range - 7, ps_shape_ellipse, ps_shape_ellipse);
part_emitter_stream(global.partsys, partemit, global.part_pollen, -30);