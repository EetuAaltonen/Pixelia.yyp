if (!global.hudCanToggle) {
	if (keyboard_check_released(vk_anykey)) {
		global.hudCanToggle = true;
	}
}