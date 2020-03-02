/// @description ???
/// @param s - ???
/// @return void -

if (!is_undefined(fishingState)) {
	if (fishingState == Fishing.Minigame || fishingState == Fishing.ResultMessage) {
		// Minigame background
		var padding = 60;
		scr_hud_draw_background(
			GuiWidth / 2, GuiHeight / 2,
			bobberAreaWidth + (padding * 2),
			bobberAreaHeight + (padding * 3),
			make_color_rgb(77, 77, 77), 1, true, true
		);
		// Area background
		scr_hud_draw_background(
			GuiWidth / 2, GuiHeight / 2,
			bobberAreaWidth, bobberAreaHeight,
			make_color_rgb(50, 111, 209), 1, true, true
		);
		// Area
		scr_hud_draw_background(
			GuiWidth / 2, GuiHeight / 2,
			(bobberAreaWidth * area1Xscale), bobberAreaHeight,
			make_color_rgb(199, 166, 34), 1, true, true
		);
		// Area
		scr_hud_draw_background(
			GuiWidth / 2, GuiHeight / 2,
			(bobberAreaWidth * area2Xscale), bobberAreaHeight,
			make_color_rgb(41, 209, 29), 1, true, true
		);
		// Bobber
		draw_sprite_ext(
			spr_fishing_bobber, 0,
			(GuiWidth / 2) + bobberX, GuiHeight / 2,
			GuiWRatio * bobberScale, GuiHRatio * bobberScale, imageAngle, c_white, 1
		);
	}
	if (fishingState == Fishing.ResultMessage) {
		// Font
		draw_set_font(fnt_draw_gui_medium);
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
        
		draw_text(GuiWidth / 2, (GuiHeight / 2) - 40, string(successText));
	}
}