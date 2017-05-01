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
}
return options;