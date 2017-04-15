///scr_inventory_item_weight(argument0);
var weight = 0;
var spriteIndex = string(argument0);
switch(spriteIndex) {
    //Materials
    case "spr_oak_log": {weight = 1.0;break;}
    case "spr_coal": {weight = 0.01;break;}
    case "spr_iron_ore": {weight = 0.3;break;}
    case "spr_iron_bar": {weight = 0.3;break;}
    case "spr_wood_billet": {weight = 0.1;break;}
    case "spr_wooden_handle": {weight = 0.02;break;}
    //Tools
    case "spr_tool_saw": {weight = 0.5;break;}
    case "spr_tool_knife": {weight = 0.3;break;}
    //Equipments
		//Helmets
		case "spr_broken_helmet": {weight = 0.8;break;}
		case "spr_knight_helmet": {weight = 1.2;break;}
		//Shields
		case "spr_wooden_shield": {weight = 1.0;break;}
		case "spr_knight_shield": {weight = 1.5;break;}
		//Boots
		case "spr_leather_boots": {weight = 0.2;break;}
		//Rings
		case "spr_silver_ring": {weight = 0.1;break;}
	//Weapons
		//Bow
		case "spr_bow": {weight = 1.5;break;}
		//Arrow
		case "spr_arrow_pouch": {weight = 2.0;break;}
};
return weight;
