var spriteIndex = argument0;
var quest = argument1;
var dialogId = argument2;
var options = false;

if (quest != false) {
	if (dialogId != false) {
		options = scr_dialog_quest_options(spriteIndex);
	} else {
		options = scr_dialog_non_quest_options(spriteIndex);
	}
} else {
	options = scr_dialog_non_quest_options(spriteIndex);
}
return options;