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
		yPos = 100;
		j = 0;
		for (i = startIndex; i < lastItem; i++) {
			if (names[j] != "") {
				tempMargin = (j*margin);       
		        //Item Description
				draw_text(scr_gui(42,"x"), scr_gui(yPos+tempMargin,"y"), names[j]);
				//Item Count
				draw_text(scr_gui(185,"x"), scr_gui(yPos+tempMargin,"y"), string(count[j]) + "  x");
				if (string_pos("inventory", global.hudState)) {
					//Item Weight
					draw_text(scr_gui(250,"x"), scr_gui(yPos+tempMargin,"y"), string(weight[j]) + "  Pw");
				} else if (string_pos("shop", global.hudState)) {
					//Item Price
					draw_text(scr_gui(250,"x"), scr_gui(yPos+tempMargin,"y"), string(price[j]) + "  G");
				}
				j++;
			} else {
				break;	
			}
		}
	}	
}

//Draw Info
scr_draw_info();