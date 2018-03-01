if (room != Menu) {
    if (!pause) {
		if (scr_pause_is_allowed()) {
	        pause = true;
			instance_deactivate_all(true);
		}
    } else {
        pause = false;
		instance_activate_all();
    }
}

