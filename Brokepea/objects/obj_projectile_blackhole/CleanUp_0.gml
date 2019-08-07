/// @description Insert description here
// You can write your code in this editor
ds_list_clear(grabbed_ids);
for(var i = 0; i < nmb_of_orbs; i++) {
	instance_destroy(orbs[i]);
}
audio_emitter_free(emitter);
part_emitter_destroy(global.partsys,partemit);