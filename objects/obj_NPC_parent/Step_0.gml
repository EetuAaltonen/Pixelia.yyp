// Start dialog
if (scr_interact_with_player()) {
	var spriteIndex = sprite_get_name(sprite_index);
    var dialogs = scr_dialog_get_options(spriteIndex, false, false);
	if (is_array(dialogs)) {
		scr_dialog(dialogs);
	} else {
		scr_add_new_toast("Nothing");
	}
}