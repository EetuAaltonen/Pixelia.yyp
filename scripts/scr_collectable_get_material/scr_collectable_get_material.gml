switch(sprite_index) {
	case spr_source_oak_tree: {
		material = "Oak Log";
	}break;
	case spr_source_iron_ore: {
		material = "Iron Ore";
	}break;
}
if (material != "") {
	material = scr_item_search_data(material, "name");	
} else {
	show_message("Material for " + sprite_get_name(sprite_index) + " not found!");
}