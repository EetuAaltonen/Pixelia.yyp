///scr_equip_remove_buffs(argument0)
var spriteName = argument0;
//Armor
var decreaseArmor = scr_inventory_item_armor(spriteName);
global.armorPlus -= decreaseArmor;
global.armor -= decreaseArmor;
//Buffs
var buffs = scr_inventory_item_buffs(spriteName);
if (buffs) {
	var listLength = ds_list_size(buffs);
	for(i = 0; i < listLength; i++) {
		var buffName = ds_list_find_value(buffs, i);
		var buffAmount = ds_list_find_value(buffs, i+1);
		switch (buffName) {
			case "Carrying capacity": global.carryingCapacityPlus -= buffAmount; break;
			case "Movement speed": global.maxWalkingSpeedPlus -= ((buffAmount/100)*global.maxWalkingSpeed);
								   global.maxRunningSpeedPlus -= ((buffAmount/100)*global.maxRunningSpeed);break;
		}
		i++
	}
}