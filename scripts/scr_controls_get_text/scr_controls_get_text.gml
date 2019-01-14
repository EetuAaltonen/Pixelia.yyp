var yPos = 274;
var xPos1 = 325;
var xPos2 = 389;
switch (global.hudState) {
	case "inventoryBackpack": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Use/Equip");
		draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), "Drop");
	}break;
	case "inventoryEquipments": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Equip");
		draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), "Drop");
	}break;
	case "shopBuy": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Buy");
	}break;
	case "shopSell": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Sell");
	}break;
	case "shopRepair": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Repair");
	}break;
	case "shopBuyBack": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Buy Back");
	}break;
	case "stashWithdraw": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Withdraw");
	}break;
	case "stashDeposit": {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), "Deposit");
	}break;
}
