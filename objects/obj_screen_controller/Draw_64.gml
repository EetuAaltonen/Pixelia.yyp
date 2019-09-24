//Font
draw_set_font(fnt_menu_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (!pause && !unfocus) {
	//Room Transition Effect
	if (drawViewAlpha) {
		scr_hud_draw_background(
			0, 0,
			guiWidth, guiHeight,
			c_black, viewAlpha, false, false
		);
	}
	
	//Darkness Effect
	if (instance_exists(obj_area_darkness)) {
		if (darknessAlpha > 0) {
			if (global.hudState == HudStates.Null || global.hudState == HudStates.Minigame) {
				scr_hud_draw_background(
					0, 0,
					guiWidth, guiHeight,
					c_black, darknessAlpha, false, false
				);
			}
		}
	}
} else {
    draw_text(guiWidth / 2, guiHeight / 2, string_hash_to_newline("Pause"));
}

if (room == Menu) {
	//Logo
	draw_sprite_ext(spr_menu_logo, 0, guiWidth / 2, 110,
					guiWRatio, guiHRatio,
			        image_angle, c_white, image_alpha);
	//Signature
	draw_sprite_ext(spr_menu_signature, 0, 14, guiHeight - 30,
					guiWRatio, guiHRatio,
			        image_angle, c_white, image_alpha);
}