//Font
draw_set_font(fnt_draw_gui_inv_small);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw Page Index
draw_set_halign(fa_center);
draw_text(scr_gui(17,"x"), scr_gui(84,"y"), string(string(pageIndex) + " / " + string(maxPageIndex)));

draw_set_halign(fa_right);
//Your Gold
draw_text(scr_gui(490,"x"), scr_gui(64,"y"), scr_coins_format(global.coins));
//Merchant's Gold
if (global.hudState == HudStates.Shop && merchant != "null") {
	draw_text(scr_gui(490,"x"), scr_gui(84,"y"), scr_coins_format(merchant.money));
}

draw_set_halign(fa_left);

if (global.hudState == HudStates.Stash &&
	global.hudAction == HudActions.Withdraw) {
	//Total And Weight
	draw_text(scr_gui(183,"x"), scr_gui(84,"y"), "Capacity:  " + string_format(abs(global.totalStashCapacity), 0, 2) + "  /  " +
				string(global.maxStashCapacity + global.stashCapacityPlus) + "  Pw");
} else {
	//Total And Weight
	draw_text(scr_gui(183,"x"), scr_gui(84,"y"), "Capacity:  " + string_format(abs(global.totalInventoryCapacity), 0, 2) + "  /  " +
				string(global.maxInventoryCapacity + global.carryingCapacityPlus) + "  Pw");
}

if (global.hudState != HudStates.Crafting) {
	draw_set_font(fnt_draw_gui_inv_small);
	draw_set_valign(fa_top);
	//Item info text
	if (is_array(itemInfoText)) {
		var lineCount = array_length_1d(itemInfoText)
		var i;
		var txtHeight;
		var margin = 1;
		//Item name
		draw_text(scr_gui(291,"x"), scr_gui(102,"y"), itemInfoText[0]);
		
		draw_set_font(fnt_draw_gui_inv_tiny);
		//Item info
		for (i = 1; i < lineCount; i++) {
			txtHeight = string_height(itemInfoText[i]);
			draw_text(scr_gui(291,"x"), scr_gui(105+((txtHeight/global.resHAspect)*i)+(i*margin),"y"), itemInfoText[i]);
		}
	} else {
		draw_text(scr_gui(291,"x"), scr_gui(102,"y"), string_hash_to_newline(itemInfoText));
	}
	
	draw_set_font(fnt_draw_gui_inv_small);
	//Menu Controls
	scr_controls_get_text();
}

//No items
if (!ds_list_size(listOfItems)) {
	//Font
	draw_set_font(fnt_draw_gui_inv_medium);
	draw_text(scr_gui(35,"x"), scr_gui(100,"y"), "No items found...");
}