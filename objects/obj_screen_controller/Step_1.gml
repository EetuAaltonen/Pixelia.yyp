//Focus
if (room != Menu && !pause) {
	if (unfocus == false && !window_has_focus()) {
		unfocus = true;
		instance_deactivate_all(true);
	} else if (unfocus && window_has_focus()) {
		unfocus = false;
		instance_activate_all();
	}
}