///scr_inventory_item_armor(argument0);
var spriteIndex = string(argument0);
var armor = 0;
switch(spriteIndex) {
    //Equipments
		//Helmets
		case "spr_broken_helmet": {armor = 5;break;}
		case "spr_knight_helmet": {armor = 20;break;}
		//Shields
		case "spr_wooden_shield": {armor = 1;break;}
		case "spr_knight_shield": {armor = 10;break;}
};
return armor;
