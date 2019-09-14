scr_set_global_hud_state(HudStates.Inventory);
scr_set_global_hud_action(HudActions.Backpack);

updateValues = true;
pageIndex = 1;
filter = "";

//Create Buttons
var buttonDataList = [
	[HudActions.Backpack, ButtonSize.Medium],
	[HudActions.Equipment, ButtonSize.Medium],
	[HudActions.Abilities, ButtonSize.Medium],
	[HudActions.Skills, ButtonSize.Small],
	[HudActions.Stats, ButtonSize.Small],
	[HudActions.Quests, ButtonSize.Small],
	[HudActions.SaveExit, ButtonSize.Medium],
	[HudActions.Close, ButtonSize.Small]
];
scr_hud_create_buttons(buttonDataList);