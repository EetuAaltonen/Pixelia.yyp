//Open Stash
if (scr_interact_with_player()) {
	scr_stash_open();
} else if (scr_keys_to_close(HudStates.Stash)) {
	//Close Stash
	scr_stash_close();
}