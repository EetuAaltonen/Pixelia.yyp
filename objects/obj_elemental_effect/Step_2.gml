var target = effect[1];
if (!instance_exists(target)) {
	var partContrl = obj_part_controller_elemental;
	part_emitter_destroy(partContrl.partElementalSys,partElementalEmit);
	instance_destroy();
} else {
	if (effect != "null") {
		depth = target.depth - 1;
		x = target.x;
		y = target.y;
	}
}