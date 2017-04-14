///scr_equip_remove_buffs(argument0)
var spriteName = argument0;
//Armor
var decreaseArmor = scr_inventory_item_armor(spriteName);
global.armorPlus -= decreaseArmor;
global.armor -= decreaseArmor;