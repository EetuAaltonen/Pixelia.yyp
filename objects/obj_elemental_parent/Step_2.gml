scr_custom_gravity();

if (distance_to_object(obj_player) == 0) {
	solid = false;
	vspeed = 0;
} else {
	solid = true;
}

var burst = 0;
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < 2) {
		if ((instance_nearest(x,y,obj_player)).elementalEffect == "null") {
			var plrX = obj_player.x;
			var plrY = obj_player.y;
			switch (effect) {
				case "fire": {burst=5}break;
				case "frost": {burst=1}break;
			}
			instance_create(plrX,plrY,obj_elemental_effect);
			(instance_nearest(plrX,plrY,obj_elemental_effect)).effect = [
				effect,
				instance_nearest(x,y,obj_player),
				burst,
				200,
				99,
				2
			]
			obj_player.elementalEffect = effect;
		}
	}
}

if (instance_exists(obj_chicken)) {
	if (distance_to_object(obj_chicken) < 2) {
		if ((instance_nearest(x,y,obj_chicken)).elementalEffect == "null") {
			var plrX = obj_chicken.x;
			var plrY = obj_chicken.y;
			switch (effect) {
				case "fire": {burst=5}break;
				case "frost": {burst=1}break;
			}
			instance_create(plrX,plrY,obj_elemental_effect);
			(instance_nearest(plrX,plrY,obj_elemental_effect)).effect = [
				effect,
				instance_nearest(x,y,obj_chicken),
				burst,
				200,
				99,
				50
			]
			obj_chicken.elementalEffect = effect;
		}
	}
}