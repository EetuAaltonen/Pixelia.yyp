//Open Stash
if (scr_interact_with_player()) {
	scr_stash_open();
} else if (scr_keys_to_close()) {
	//Close Stash
	if (string_pos("stash", string(global.hudState))) {
		scr_stash_close();
	}
}