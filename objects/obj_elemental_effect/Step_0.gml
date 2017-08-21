if (effect != "null") {
	if (!alarmSet) {
		alarm[1] = effect[5];
		alarm[2] = effect[4];
		alarm[3] = effect[3];
		alarmSet = true;
		var partContrl = obj_part_controller_elemental;
		partElementalEmit = part_emitter_create(partContrl.partElementalSys);
	}
}
