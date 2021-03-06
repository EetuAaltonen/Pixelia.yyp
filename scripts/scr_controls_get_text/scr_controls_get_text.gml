var yPos = 274;
var xPos1 = 299;
var xPos2 = 363;
switch (global.hudState) {
	case HudStates.Inventory: {
		if (global.hudAction == HudActions.Backpack) {
			draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.UseEquip]);
			draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		}
		if (global.hudAction == HudActions.Equipment) {
			draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Equip]);
			draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		}
	}break;
	default: {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[global.hudAction]);
	}
}