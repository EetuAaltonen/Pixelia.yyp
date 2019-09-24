///Inventory
//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Crafting ||
	global.hudState == HudStates.Shop) {
	
	// TODO: Move this under GUI
	// Grid background
	scr_inventory_draw_background();
}