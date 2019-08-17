if (keyboard_check_pressed(ord("M"))) {
	if (global.hudState == HudStates.Null) {
		scr_set_global_hud_state(HudStates.Map);
		scr_set_global_hud_action(HudActions.Null);

		scr_map_create_objects();
	} else if (global.hudState == HudStates.Map) {
		scr_map_close();
	}
}