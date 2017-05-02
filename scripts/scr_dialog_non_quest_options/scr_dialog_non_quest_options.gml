var spriteIndex = argument0;
var options = false;
/*
	option = [
		dialog,
		action
		...
	]
*/
switch (spriteIndex) {
	case "spr_well": {options = ["Uuu.. water", "Fill empty flasks", scr_fill_empty_flasks, "Leave", scr_dialog_leave];break;}
	case "spr_NPC_merchant": {options = ["Good day my friend!", "Shop", scr_open_shop, "Leave", scr_dialog_leave];break;}
}
return options;