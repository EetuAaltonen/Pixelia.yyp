draw_self();
//Health bar
draw_sprite_ext(spr_enemies_health_bar, 0, x-((30*(healthPoints/maxHealth))/2), y-(sprite_height/2)-10, 30*(healthPoints/maxHealth), 1, 0, -1, 0.8);