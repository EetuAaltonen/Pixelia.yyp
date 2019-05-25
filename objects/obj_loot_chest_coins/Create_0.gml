image_speed = 0;
opened = false;

LootEffectPS = part_system_create();
part_system_depth(LootEffectPS, depth-1);

goldParticle = part_type_create();
part_type_sprite(goldParticle, spr_coin, false, false, false);
part_type_scale(goldParticle, 1, 1);
part_type_speed(goldParticle, 1, 1.5, 0, 0);
part_type_direction(goldParticle, 50, 120, 0, 2);
part_type_gravity(goldParticle, 0.02, 270);
part_type_life(goldParticle, 50, 100);
part_type_alpha2(goldParticle, 1, 0.2);

partEffDelay = scr_time_sec_to_alarm(0.1);
partEffCount = 0;
partEffIndx = 0;