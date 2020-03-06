if (global.hudState != HudStates.Map) {
	//Font
	scr_draw_set_font(
		fnt_draw_gui_medium,
		fa_center,
		fa_middle,
		c_black, 1
	);

	//Armor
	draw_sprite_ext (
		spr_armor, 0,
		scr_gui_grid(1, Grid.Row),
		scr_gui_grid(1, Grid.Col),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, image_alpha
	);
	var armorColor = scr_ui_armor_value_color();
	draw_set_color(armorColor);
	var spriteWidth = 30 * GameGuiRatio;
	var spriteHeight = spriteWidth;
	draw_text(
		scr_gui_grid(1, Grid.Row) + (spriteWidth / 2) + 1,
		scr_gui_grid(1, Grid.Col) + (spriteHeight / 2) - 3,
		string(global.armor)
	);

	//Font
	scr_draw_set_font(
		fnt_draw_gui_small,
		fa_center,
		fa_middle,
		c_black, 1
	);
	var barWidth = scr_gui_grid(20, Grid.Row);
	var barHeight = scr_gui_grid(2, Grid.Col);
	var barBgColor = make_color_rgb(48, 46, 44);

	//Health bar
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(1, Grid.Col),
		barWidth, barHeight,
		barBgColor,
		1, false, false
	);
	var barScale = global.healthPoints / global.maxHealth;
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(1, Grid.Col),
		barWidth * barScale, barHeight,
		make_color_rgb(224, 20, 20),
		1, false, false
	);
	//draw_text(barXPos + (barWidth / 2), barYPos + (barHeight / 2), string(global.healthPoints) + " / " + string(global.maxHealth));

	// Stamina bar
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(4, Grid.Col),
		barWidth, barHeight,
		barBgColor, 1, false, false
	);
	barScale = global.stamina/global.maxStamina;
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(4, Grid.Col),
		barWidth * barScale, barHeight,
		make_color_rgb(224, 210, 20),
		1, false, false
	);
	//draw_text(barXPos + (barWidth / 2), barYPos + (barHeight / 2), string(global.stamina) + " / " + string(global.maxStamina));

	// Mana bar
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(7, Grid.Col),
		barWidth, barHeight,
		barBgColor, 1, false, false
	);
	barScale = global.mana/global.maxMana;
	scr_hud_draw_background(
		scr_gui_grid(6, Grid.Row),
		scr_gui_grid(7, Grid.Col),
		barWidth * barScale, barHeight,
		make_color_rgb(64, 20, 224),
		1, false, false
	);

	// Buff icons
	var i, buff, sprite;
	var xPos = 12;
	var yPos = 78;
	var margin = 30;
	var buffCount = ds_list_size(global.buffs);
	for (i = 0; i < buffCount; i++) {
		buff = ds_list_find_value(global.buffs, i);
		sprite = asset_get_index("spr_buff_icon_" + buff[0]);
		draw_sprite_ext(
			sprite, 0,
			xPos + (margin * i), yPos,
			GameGuiRatio, GameGuiRatio,
			image_angle, c_white, 1
		);
	}
}