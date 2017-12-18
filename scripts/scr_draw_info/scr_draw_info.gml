var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

//Page Index background
draw_sprite(spr_inv_item_description_bg, 0,viewX+87, viewY+95);
//Draw Page Index
draw_text(viewX+22,viewY+95, string("PAGE:    " + string(currentPage) + "  /  " + string(maxPageIndex)));
//Total and weight background
draw_sprite(spr_inv_item_description_bg, 0,viewX+255, viewY+95);
//Total and weight
draw_text(viewX+190,viewY+95, "Capacity:  " + string_format(global.total_item_weight, 0, 2) + "  /  " +
		  string(global.max_item_weight + global.carryingCapacityPlus) + "  Pw");
		  
//Vertical align
draw_set_valign(fa_top);
//Font
draw_set_font(fnt_inventory_item_info_text);

//Item info background
draw_sprite(spr_inv_item_info_bg, 0,viewX+334, viewY+85);
//Item info text
draw_text(viewX+344, viewY+90, itemInfoText);