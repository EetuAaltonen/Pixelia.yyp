if (global.hudState != HudStates.Null) {
	switch (global.hudState) {
		case HudStates.Inventory: {
			draw_sprite(spr_inv_item_price_bg, 0, 284, 267);
			draw_sprite(spr_controls_mouse, 0, 288, 271);

			if (global.hudAction == HudActions.Backpack ||
				global.hudAction == HudActions.Equipment) {
				draw_sprite(spr_inv_item_price_bg, 0, 348, 267);
				draw_sprite(spr_controls_mouse, 1, 352, 271);
			}
		}break;
		case HudStates.Shop: {
			draw_sprite(spr_inv_item_price_bg, 0, 284, 267);
				draw_sprite(spr_controls_mouse, 0, 288, 271);
		}break;
	}
}