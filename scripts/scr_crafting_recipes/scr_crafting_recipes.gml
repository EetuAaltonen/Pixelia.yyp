var category = argument0;
var recipes = [];
switch (category) {
	case "forge": {
		recipes = [
			["Oak Log", "", "", "Coal"],
			["Iron Ore", "", "", "Iron Ingot"],
			["Iron Ore", "Coal", "", "Steel Ingot"]
		];
	}break;
	case "alchemy": {
		recipes = [];
	}break;
	case "workbench": {
		recipes = [];
	}break;
	case "anvil": {
		recipes = [
			["Oak Log", "Iron Ingot", "", "Knife"],
			["Oak Log", "Steel Ingot", "", "Saw"]
		];
	}break;
}
return recipes;