if (global.hudState != HudStates.Map) {
	// Hotbar
	scr_hud_draw_hotbar();
	
	// Player stats
	scr_hud_draw_player_statistics();
}