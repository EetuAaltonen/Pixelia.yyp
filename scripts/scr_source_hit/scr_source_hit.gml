//Create particle
if (part_system_exists(wood_dust_particles)) {
    part_emitter_burst(wood_dust_particles, wood_dust_emitter, wood_dust, random_range(10,20));
    //Create items
    scr_source_create_item(material);
    //XP
	scr_skills_add_xp("Mining", xpReward);
}