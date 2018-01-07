var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

//Page Index background
draw_sprite(spr_inv_item_description_bg, 0,viewX+87, viewY+95);
//Draw Page Index
draw_text(viewX+22,viewY+95, string("PAGE:    " + string(pageIndex) + "  /  " + string(maxPageIndex)));

if (string_pos("shop", global.hudState)) {
	//Your Gold Background
	draw_sprite(spr_inv_item_description_bg, 0,viewX+255, viewY+95);
	//Your Gold
	draw_text(viewX+190,viewY+95, "Your gold:  " + string(global.coins) + "  G");
} else {
	//Total And Weight Background
	draw_sprite(spr_inv_item_description_bg, 0,viewX+255, viewY+95);
	if (global.hudState == "stashWithdraw") {
		//Total And Weight
		draw_text(viewX+190,viewY+95, "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
					string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
	} else {
		//Total And Weight
		draw_text(viewX+190,viewY+95, "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
					string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
	}
}

if (scr_hud_state_crafting()) {
	//Vertical align
	draw_set_valign(fa_top);
	//Font
	draw_set_font(fnt_inventory_item_info_text);

	//Item info background
	draw_sprite(spr_inv_item_info_bg, 0,viewX+334, viewY+85);
	//Item info text
	draw_text(viewX+344, viewY+90, itemInfoText);
}