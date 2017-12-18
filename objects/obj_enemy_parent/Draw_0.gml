draw_self();
//scr_enemy_draw_stats();

//Armor bar
draw_sprite_ext(spr_enemies_health_bar, 1, x-((30*(armor/maxArmor))/2),
				y-(sprite_height/2)-10, 30*(armor/maxArmor), 1, 0, -1, 0.8);
//Health bar
draw_sprite_ext(spr_enemies_health_bar, 0, x-((30*(healthPoints/maxHealth))/2),
				y-(sprite_height/2)-7, 30*(healthPoints/maxHealth), 1, 0, -1, 0.8);