///scr_inventory_item_name(argument0);
var name = "";
var spriteName = string(argument0);
switch(spriteName) {
    //Materials
    case "spr_oak_log": {name = "Oak log";break;}
    case "spr_coal": {name = "Coal";break;}
    case "spr_iron_ore": {name = "Iron ore";break;}
    case "spr_iron_bar": {name = "Iron bar";break;}
    case "spr_wood_billet": {name = "Wood billet";break;}
    case "spr_wooden_handle": {name = "Wooden handle";break;}
    //Tools
    case "spr_tool_saw": {name = "Saw";break;}
    case "spr_tool_knife": {name = "Knife";break;}
    //Equipments
		//Helmets
		case "spr_broken_helmet": {name = "Broken helmet";break;}
		case "spr_knight_helmet": {name = "Knight helmet";break;}
		//Shields
		case "spr_wooden_shield": {name = "Wooden shield";break;}
		case "spr_knight_shield": {name = "Knight shield";break;}
		//Boots
		case "spr_leather_boots": {name = "Leather boots";break;}
		//Rings
		case "spr_silver_ring": {name = "Silver ring";break;}
	//Weapons
		//Bow
		case "spr_bow": {name = "Bow";break;}
		//Arrow
		case "spr_arrow_pouch": {name = "Arrow";break;}
};
return name;
