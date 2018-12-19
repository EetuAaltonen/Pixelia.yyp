scr_set_global_hudstate("inventoryBackpack");
updateValues = true;
pageIndex = 1;
filter = "";

//Create Buttons
var buttons = [
	["inventoryBackpack", "Backpack", "medium"],
	["inventoryEquipments", "Equipments", "medium"],
	["abilities", "Abilities", "medium"],
	["skills", "Skills", "small"],
	["stats", "Stats", "small"],
	["quests", "Quests", "small"],
	["save&exit", "Save And Exit", "medium"],
	["close", "Close", "small"]
];
scr_inventory_create_buttons(buttons/*, 4, 40*/);