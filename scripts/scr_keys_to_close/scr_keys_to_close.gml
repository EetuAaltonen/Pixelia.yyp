return (
	global.hudCanToggle &&
	(
		(!scr_inventory_search_focused() && keyboard_check_pressed(ord("E"))) ||
		keyboard_check_pressed(vk_tab) ||
		keyboard_check_pressed(vk_escape)
	)
);