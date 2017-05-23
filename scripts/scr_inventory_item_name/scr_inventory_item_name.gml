///scr_inventory_item_name(argument0);
var spriteName = string(argument0);
var name = "";
switch(spriteName) {
    //Materials
    case "spr_oak_log": {name = "Oak log";break;}
    case "spr_coal": {name = "Coal";break;}
		//Ores
		case "spr_iron_ore": {name = "Iron ore";break;}
		//Ingots
		case "spr_iron_ingot": {name = "Iron ingot";break;}
		case "spr_steel_ingot": {name = "Steel ingot";break;}
		case "spr_silver_ingot": {name = "Silver ingot";break;}
		case "spr_gold_ingot": {name = "Gold ingot";break;}
		case "spr_bronze_ingot": {name = "Bronze ingot";break;}
		case "spr_ebony_ingot": {name = "Ebony ingot";break;}
		case "spr_crimson_ingot": {name = "Crimson ingot";break;}
		case "spr_adamite_ingot": {name = "Adamite ingot";break;}
		case "spr_fluellite_ingot": {name = "Fluellite ingot";break;}
		case "spr_pinalite_ingot": {name = "Pinalite ingot";break;}
		case "spr_troilite_ingot": {name = "Troilite ingot";break;}
		case "spr_pyrrhotite_ingot": {name = "Pyrrhotite ingot";break;}
		case "spr_zincite_ingot": {name = "Zincite ingot";break;}
		case "spr_cavansite_ingot": {name = "Cavansite ingot";break;}
    case "spr_wood_billet": {name = "Wood billet";break;}
    case "spr_wooden_handle": {name = "Wooden handle";break;}
	//Ingredients
	case "spr_water_flask": {name = "Water flask";break;}
	case "spr_empty_flask": {name = "Empty flask";break;}
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
