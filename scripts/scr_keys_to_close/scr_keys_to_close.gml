/// @desc Close key check
/// @param hudState - Hud state to be closed
/// @return Bool - If able to close

var hudState = argument0;

if (global.hudCanToggle &&
	global.hudState == hudState &&
	((!scr_inventory_search_focused() && keyboard_check_released(ord("E"))) ||
	keyboard_check_released(vk_tab) ||
	keyboard_check_released(vk_escape))) {
	global.hudCanToggle = false;
	return true;
}
return false;