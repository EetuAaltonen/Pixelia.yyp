var hudAction = argument0;
var recipes = [];
switch (hudAction) {
	case HudActions.Forge: {
		recipes = [
			[[
				[spr_oak_log, 1]
			], spr_coal, 2, undefined, undefined],
			[[
				[spr_iron_ore, 1]
			], spr_iron_ingot, 1, undefined, undefined],
			[[
				[spr_iron_ore, 1],
				[spr_coal, 1]
			], spr_steel_ingot, 1, undefined, undefined]
		];
	}break;
	/*case "furnace": {
		recipes = [
			["Ring Mould", "Gold Ore", "Gold Ring", 1, "Crucible With Handle", ""],
			["Amulet Mould", "Gold Ore", "Gold Ore", "Gold Amulet", 1, "Crucible With Handle", ""]
		];
	}break;
	case "alchemy": {
		recipes = [];
	}break;
	case "workbench": {
		recipes = [
			["Oak Log", "Iron Ingot", "Knife", 1, "", ""],
			["Oak Log", "Steel Ingot", "Saw", 1, "", ""],
			["Oak Log", "Knife", "Bow Model", 1, "", ""],
			["Bow Model", "String", "Bow", 1, "", ""],
			["Iron Ingot", "Wooden Stick", "Feather", "Arrow", 10, "", ""],
			["Oak Log", "Saw", "Knife", "Wooden Stick", 10, "", ""],
			["String", "String", "String", "String", "Rope", 1, "", ""],
			["String", "String", "String", "String", "String", "String", "Fabric", 1, "", ""]
		];
	}break;
	case "anvil": {
		recipes = [
			["Oak Log", "Iron Ingot", "Knife", 1, "", ""],
			["Oak Log", "Steel Ingot", "Saw", 1, "", ""]
		];
	}break;
	case "cooking": {
		recipes = [
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""],
			["Egg", "Flour", "Milk", "Cake", 1, "", ""]
		];
	}break;
	case "spinningWheel": {
		recipes = [
			["Wool", "String", 2, "", ""]
		];
	}break;
	case "waterWell": {
		recipes = [
			["Empty Flask", "Flask Of Water", 1, "", ""]
		];
	}break;*/
}
return recipes;