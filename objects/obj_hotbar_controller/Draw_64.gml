if (global.hudState != HudStates.Map) {
	var yPos = scr_gui_grid(85, Grid.Col);
	// Hotbar background
	scr_hud_draw_background(
		scr_gui_grid(0, Grid.Row), yPos,
		GuiWidth, (GuiHeight - yPos),
		make_color_rgb(102, 86, 61),
		1, false, false
	);

	// Font
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_left, fa_middle,
		c_black, 1
	);

	// Level
	draw_text(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(89, Grid.Col),
		"Level  " + string(global.level)
	);

	var barWidth = GuiWidth - (scr_gui_grid(1, Grid.Row) * 2);
	var barHeight = scr_gui_grid(2, Grid.Col);
	var barScale;
	// Skill XP
	draw_text(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(92, Grid.Col),
		"XP  " + string(global.xp) + " / " + string(global.xpLimit)
	);
	// Xp bar
	scr_hud_draw_background(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(94, Grid.Col),
		barWidth, barHeight,
		make_color_rgb(61, 82, 67),
		1, false, false
	);
	barScale = global.xp / global.xpLimit;
	scr_hud_draw_background(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(94, Grid.Col),
		barWidth * barScale, barHeight,
		make_color_rgb(61, 82, 67),
		1, false, false
	);

	draw_set_halign(fa_right);
	// Enchanting XP
	draw_text(
		(GuiWidth - scr_gui_grid(1, Grid.Row)),
		scr_gui_grid(92, Grid.Col),
		"Ench. XP  " + string(global.xp) + " / " + string(global.xpLimit)
	);
	// Enchanting Xp bar
	scr_hud_draw_background(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(97, Grid.Col),
		barWidth, barHeight,
		make_color_rgb(64, 39, 82),
		1, false, false
	);
	barScale = global.enchantingXp / global.enchantingXpLimit;
	scr_hud_draw_background(
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(97, Grid.Col),
		barWidth * barScale, barHeight,
		make_color_rgb(128, 22, 204),
		1, false, false
	);
	
	// Icons
	draw_set_halign(fa_right);

	// Coins
	draw_sprite_ext(
		spr_money_icon, 0,
		scr_gui_grid(98, Grid.Row),
		scr_gui_grid(89, Grid.Col),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, image_alpha
	);
	draw_text(
		scr_gui_grid(96, Grid.Row),
		scr_gui_grid(89, Grid.Col),
		string(global.coins) + "G"
	);

	// Potion
	draw_sprite_ext(
		spr_potion_icon, 0,
		scr_gui_grid(88, Grid.Row),
		scr_gui_grid(89, Grid.Col),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, image_alpha
	);
	draw_text(
		scr_gui_grid(86, Grid.Row),
		scr_gui_grid(89, Grid.Col),
		string(global.potions) + " x"
	);
}