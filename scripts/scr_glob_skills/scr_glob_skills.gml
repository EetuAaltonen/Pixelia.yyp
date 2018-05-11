enum skill {
	name,
	level,
	xp,
	xpLimit
}
var defaultXP = 100;
var skill skills = [
	["Mining", 1, 0, defaultXP],
	["Woodcutting", 1, 0, defaultXP],
	["Smithing", 1, 0, defaultXP],
	["Crafting", 1, 0, defaultXP],
	["Cooking", 1, 0, defaultXP],
	["Alchemy", 1, 0, defaultXP],
	["Fishing", 1, 0, defaultXP],
	["Hunting", 1, 0, defaultXP],
	["Farming", 1, 0, defaultXP]
];
return skills;