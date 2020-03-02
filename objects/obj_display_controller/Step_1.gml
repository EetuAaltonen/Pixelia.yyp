// Focus
if (room != Menu && !pause) {
	if (windowFocus && !window_has_focus()) {
		windowFocus = false;
		instance_deactivate_all(true);
	} else if (!windowFocus && window_has_focus()) {
		windowFocus = true;
		instance_activate_all();
	}
}