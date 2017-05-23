///scr_inventory_item_weight(argument0);
var type = "";
var spriteIndex = string(argument0);
switch(spriteIndex) {
    //Materials
    case "spr_oak_log": {type = "[inventory1,shop,forge,workbench]";break;}
		//Ores
	    case "spr_coal": {type = "[inventory1,shop,forge]";break;}
	    case "spr_iron_ore": {type = "[inventory1,shop,forge]";break;}
		//Ingots
		case "spr_iron_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_steel_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_silver_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_gold_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_bronze_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_ebony_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_crimson_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_adamite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_fluellite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_pinalite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_troilite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_pyrrhotite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_zincite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
		case "spr_cavansite_ingot": {type = "[inventory1,shop,forge,workbench]";break;}
    case "spr_wood_billet": {type = "[inventory1,shop,workbench]";break;}
    case "spr_wooden_handle": {type = "[inventory1,shop,workbench]";break;}
	//Ingredients
	case "spr_water_flask": {type = "[inventory1,shop,alchemy]";break;}
	case "spr_empty_flask": {type = "[inventory1,shop,alchemy]";break;}
    //Tools
    case "spr_tool_saw": {type = "[inventory1,shop,tool,workbench]";break;}
    case "spr_tool_knife": {type = "[inventory1,shop,tool,workbench]";break;}
    //Equipments
		//Helmets
		case "spr_broken_helmet": {type = "[inventory1,inventoryEquipments,shop]";break;}
		case "spr_knight_helmet": {type = "[inventory1,inventoryEquipments,shop]";break;}
		//Shields
		case "spr_wooden_shield": {type = "[inventory1,inventoryEquipments,shop]";break;}
		case "spr_knight_shield": {type = "[inventory1,inventoryEquipments,shop]";break;}
		//Boots
		case "spr_leather_boots": {type = "[inventory1,inventoryEquipments,shop]";break;}
		//Rings
		case "spr_silver_ring": {type = "[inventory1,inventoryEquipments,shop]";break;}
	//Weapons
		//Bow
		case "spr_bow": {type = "[inventory1,inventoryEquipments,shop]";break;}
		//Arrow
		case "spr_arrow_pouch": {type = "[inventory1,inventoryEquipments,shop]";break;}
};
return type;
