///scr_equip_add_buffs(argument0)
var spriteName = argument0;
//Armor
global.armorPlus += armor;
global.armor += armor;
//Buffs
if (buffs) {
	var listLength = ds_list_size(buffs);
	for(var i = 0; i < listLength; i++) {
		var buffName = ds_list_find_value(buffs, i);
		var buffAmount = ds_list_find_value(buffs, i+1);
		switch (buffName) {
			case "Carrying capacity": global.carryingCapacityPlus += buffAmount; break;
			case "Movement speed": global.maxWalkingSpeedPlus += ((buffAmount/100)*global.maxWalkingSpeed);
								   global.maxRunningSpeedPlus += ((buffAmount/100)*global.maxRunningSpeed);break;
		}
		i++
	}
}