/// @description Insert description here
// You can write your code in this editor
ds_list_clear(grabbed_ids);
for(var i = 0; i < nmb_of_orbs; i++) {
	with(orbs[i]) {
		x = other.x;
		y = other.y-other.z;
		death = true;
		ds_list_add(trail,array(x,y));
	}
}
audio_emitter_free(emitter);
part_emitter_destroy(global.partsys,partemit);