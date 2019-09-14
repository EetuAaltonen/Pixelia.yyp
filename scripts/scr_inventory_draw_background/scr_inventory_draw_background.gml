var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
	
//Draw Info Background
if (global.hudState == HudStates.Crafting || global.hudState == HudStates.Inventory) {
	//Page Index background
	draw_sprite(spr_inv_button_small, 0, viewX+4, viewY+76);
	//Total And Weight Background
	draw_sprite(spr_inv_item_long_bg, 0, viewX+180, viewY+76);
	if (global.hudState != HudStates.Crafting) {
		//Item info background
		draw_sprite(spr_inv_item_info_bg, 0, viewX+284, viewY+96);
			
		//Your Gold
		draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+56);
		draw_sprite_ext(spr_money_icon, image_index, viewX+425, 
		            viewY+65, 1, 1,
		            image_angle, c_white, image_alpha);
						
		//Merchant's Money
		if (global.hudState == HudStates.Shop) {
			draw_sprite(spr_inv_button_medium, 0, viewX+436, viewY+76);
			draw_sprite_ext(spr_money_icon_m, image_index, viewX+425, 
			            viewY+85, 1, 1, 
			            image_angle, c_white, image_alpha);	
		}
		//Menu Controls
		scr_controls_get_bg();
	}
		
	//Equipped items
	if (global.hudAction == HudActions.Equipment) {
		//Background
		draw_sprite(spr_inv_equip_info_bg, 0, viewX+406, viewY+96);
	}
}