///Close crafting
if (keyboard_check_pressed(ord("E")) || keyboard_check_released(vk_tab)) {
	if (global.hudState == hudState) {
	    global.hudState = "null";
		if (instance_exists(obj_player)) {
			obj_player.action_state = "null";
		}
	}
}
