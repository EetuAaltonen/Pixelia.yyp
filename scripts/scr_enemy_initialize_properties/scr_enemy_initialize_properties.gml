//Health
maxHealth = argument0;
healthPoints = maxHealth;
//Armor
maxArmor = argument1;
armor = maxArmor;
//XP
xpReward = argument2;
enchantingXpReward = argument3;
//Loot
name = argument4;
loots = "null";
//Buffs
buffs = ds_list_create();
var tempBuffs = argument5;
var i;
var buffCount = array_length_1d(tempBuffs);
for (i = 0; i < buffCount; i++) {
	ds_list_add(buffs, tempBuffs[i]);	
}
//Can be attacked
invulnerable = false;