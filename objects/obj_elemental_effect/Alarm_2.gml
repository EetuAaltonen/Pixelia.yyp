var target = effect[1];
if (target == instance_nearest(x,y,obj_player)) {
	//global.healthPoints -= 1;
	if (global.healthPoints == 0) {
		target.image_blend = c_white;
		target.elementalEffect = "null";
		var partContrl = obj_part_controller_elemental;
		part_emitter_destroy(partContrl.partElementalSys,partElementalEmit);
		instance_destroy();
	}
	alarm[2] = effect[4];
}