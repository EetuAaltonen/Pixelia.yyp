var element = argument0;
var target = argument1;
var burst = argument2;
var partEmit = argument3;

if (instance_exists(target)) {
	var targetX = target.x;
	var targetY = target.y;
	var partContrl = obj_part_controller_elemental;

	switch (element) {
		case "fire": {
			part_emitter_burst(partContrl.partElementalSys,partEmit,
								partContrl.partElementalFire,burst);
			part_emitter_region(partContrl.partElementalSys,partEmit,
								targetX-15,targetX+15,targetY-10,targetY+10,
								ps_shape_ellipse,ps_distr_gaussian);
			target.image_blend = c_red;
		}break;
		case "frost": {
			part_emitter_burst(partContrl.partElementalSys,partEmit,
								partContrl.partElementalFrost,burst);
			part_emitter_region(partContrl.partElementalSys,partEmit,
								targetX-15,targetX+15,targetY-10,targetY+10,
								ps_shape_ellipse,ps_distr_gaussian);
			target.image_blend = c_aqua;
		}break;
		case "poison": {
	
		}break;
	}
}

/*if (elementalEffect != "null") {
	
	image_blend = c_red;
} else {
	part_emitter_stream(partElementalSys,partElementalEmit,partElemental,0);
	image_blend = c_white;
}