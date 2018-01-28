switch(material) {
	case "Iron Ore": {
		bgColor = make_colour_hsv(15, 255, 200);
	}break;
	case "Coal": {
		bgColor = make_colour_hsv(0, 0, 12);
	}break;
	case "Gold Ore": {
		bgColor = make_colour_hsv(35, 255, 255);
	}break;
}
if (bgColor != "null") {
	material = scr_item_search_data(material, "name");	
} else {
	show_message("Material for " + sprite_get_name(sprite_index) + " not found!");
}