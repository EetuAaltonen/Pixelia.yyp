/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7 
	effectAmount; 8
}*/

var listOfItems = argument0;

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var yPos;
var margin = 19, tempMargin;
var i, j;
var data;
var listSize = ds_list_size(listOfItems);

if (listSize > 0) {
	if (!updateValues) {
		yPos = 120;
		j = 0;
		for (i = startIndex; i < lastItem; i++) {
			tempMargin = (j*margin);
			//Item Icon Background
	        draw_sprite(spr_inv_item_bg, 0, scr_gui(30,"x"), scr_gui(yPos+tempMargin,"y"));        
	        //Item Description Background
	        draw_sprite(spr_inv_item_description_bg, 0, scr_gui(120,"x"), scr_gui(yPos+tempMargin,"y"));
	        //Item Description
			draw_text(scr_gui(56,"x"),scr_gui(yPos+tempMargin,"y"), names[j]);
			//Item Count Background
	        draw_sprite(spr_inv_item_count_bg, 0, scr_gui(228,"x"), scr_gui(yPos+tempMargin,"y"));
			//Item Count
			draw_text(scr_gui(207,"x"), scr_gui(yPos+tempMargin,"y"), string(count[j]) + "  x");
			if (string_pos("inventory", global.hudState)) {
				//Item Weight Background
	            draw_sprite(spr_inv_item_count_bg, 0, scr_gui(295,"x"), scr_gui(yPos+tempMargin,"y"));
				//Item Weight
				draw_text(scr_gui(274,"x"), scr_gui(yPos+tempMargin,"y"), string(weight[j]) + "  Pw");
			} else if (string_pos("shop", global.hudState)) {
				//Item Price Background
	            draw_sprite(spr_inv_item_count_bg, 0, scr_gui(295,"x"), scr_gui(yPos+tempMargin,"y"));
				//Item Price
				draw_text(scr_gui(274,"x"), scr_gui(yPos+tempMargin,"y"), string(price[j]) + "  G");
			}
			j++;
		}
	}	
}

//Draw Info
scr_draw_info();