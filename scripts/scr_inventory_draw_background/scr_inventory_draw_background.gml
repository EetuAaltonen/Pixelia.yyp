//Draw Info Background
if (global.hudState == HudStates.Crafting ||
	global.hudState == HudStates.Inventory ||
	global.hudState == HudStates.Shop) {
	//Page Index background
	draw_sprite(spr_inv_button_small, 0, 4, 76);
	//Total And Weight Background
	draw_sprite(spr_inv_item_long_bg, 0, 180, 76);
	if (global.hudState != HudStates.Crafting) {
		//Item info background
		draw_sprite(spr_inv_item_info_bg, 0, 284, 96);
			
		//Your Gold
		draw_sprite(spr_inv_button_medium, 0, 436, 56);
		draw_sprite_ext(spr_money_icon, image_index, 425, 
		            65, 1, 1,
		            image_angle, c_white, image_alpha);
						
		//Merchant's Money
		if (global.hudState == HudStates.Shop) {
			draw_sprite(spr_inv_button_medium, 0, 436, 76);
			draw_sprite_ext(spr_money_icon_m, image_index, 425, 
			            85, 1, 1, 
			            image_angle, c_white, image_alpha);	
		}
		//Menu Controls
		scr_controls_get_bg();
	}
		
	//Equipped items
	if (global.hudAction == HudActions.Equipment) {
		//Background
		draw_sprite(spr_inv_equip_info_bg, 0, 406, 96);
	}
}