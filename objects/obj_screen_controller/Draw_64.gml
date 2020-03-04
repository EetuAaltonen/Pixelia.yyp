//Font
draw_set_font(fnt_draw_gui_huge);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (!pause && !unfocus) {
	// Room Transition Effect
	if (drawViewAlpha) {
		scr_hud_draw_background(
			0, 0,
			GuiWidth, GuiHeight,
			c_black, viewAlpha, false, false
		);
	}
	
	// TODO: Better darkness effect
	// Darkness Effect
	/*if (instance_exists(obj_area_darkness)) {
		if (darknessAlpha > 0) {
			if (global.hudState == HudStates.Null || global.hudState == HudStates.Minigame) {
				scr_hud_draw_background(
					0, 0,
					GuiWidth, GuiHeight,
					c_black, darknessAlpha, false, false
				);
			}
		}
	}*/
} else {
    draw_text(GuiWidth / 2, GuiHeight / 2, "Pause");
}