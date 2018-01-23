if (string_pos("inventory", global.hudState) != 0 ||
	string_pos("shop", global.hudState) != 0 ||
	string_pos("stash", global.hudState) != 0 ||
	scr_hud_state_some_of_crafting()) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	
	//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
}