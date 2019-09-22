if (instance_exists(obj_menu_button)) {
	var count = instance_number(obj_menu_button);
	var button;
	var i;
	for (i = 0; i < count; i++) {
		button = instance_find(obj_menu_button, i);
		if (button.action == MenuActions.Load || button.action == MenuActions.Delete) {
			button.checkSaveName = true;
		}
	}
}