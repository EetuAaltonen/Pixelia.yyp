///@description Erase
if (keyboard_check(vk_backspace)) {
	string_delete(keyboard_string, (string_length(keyboard_string)-1), 1);
	txt = keyboard_string;
	if (erase_delay > 1) {
		erase_delay *= 0.8;
		if (erase_delay < 1) { erase_delay = 1; }
	}
	alarm[2] = round(erase_delay);
}