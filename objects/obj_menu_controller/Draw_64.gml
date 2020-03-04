if (room == Menu) {
	// Logo
	draw_sprite_ext (
		spr_menu_logo, 0,
		scr_gui_grid(50, Grid.Row, false),
		scr_gui_grid(15, Grid.Col, false),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, image_alpha
	);
	// Signature
	draw_sprite_ext(
		spr_menu_signature, 0,
		scr_gui_grid(2, Grid.Row, false),
		scr_gui_grid(95, Grid.Col, false),
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, image_alpha
	);
}