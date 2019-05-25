if (partEffIndx++ <= partEffCount) {
	var i = irandom_range(1, 4);
	global.coins += i;
	part_particles_create(LootEffectPS, random_range(x-8, x+6), y-6, goldParticle, i);
	
	if (partEffIndx % 2 == 0) {
		image_index++;
	}
	alarm[0] = partEffDelay;
}