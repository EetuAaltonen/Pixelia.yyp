if (partEffIndx++ <= partEffCount) {
	part_particles_create(LootEffectPS, random_range(x-8, x+6), y-6, goldParticle, irandom_range(1, 4));
	
	alarm[0] = partEffDelay;
} else {
	global.hudState = "looting";	
}