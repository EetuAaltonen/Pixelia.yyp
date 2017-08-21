var partContrl = obj_part_controller_elemental;
part_emitter_destroy(partContrl.partElementalSys,partElementalEmit);
var target = effect[1];
if (instance_exists(target)) {
	target.elementalEffect = "coolDown";
}
alarm[4] = room_speed*3;