var listOfBuffs = false;
var globalBuffs = [
	"Additional health", global.healthPlus,
	//Health doen't have regeneration!!
	"Additional armor", global.armorPlus,
	"Armor regeration", global.armorRegenPlus,
	"Additional stamina", global.staminaPlus,
	"Stamina regeration", global.staminaRegenPlus,
	"Additional mana", global.manaPlus,
	"Mana regeration", global.manaRegenPlus,
	"Carrying capacity", global.carryingCapacityPlus,
	"Movement speed", real(string_format((((global.maxWalkingSpeedPlus+global.maxWalkingSpeed)-global.maxWalkingSpeed)/global.maxWalkingSpeed)*100, 0, 0)),
	"Overloaded", global.slowingWalkingSpeed,
];
var listLength = array_length_1d(globalBuffs);
var index = 0;
for (var i = 0; i < listLength; i ++) {
	if (globalBuffs[i+1] > 0) {
		listOfBuffs[index] = [globalBuffs[i], globalBuffs[i+1]];
		index++
	}
	i++
}
return listOfBuffs;