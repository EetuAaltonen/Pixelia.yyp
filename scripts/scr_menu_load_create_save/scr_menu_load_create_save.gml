obj_search_box.selected = false;
obj_search_box.blink_icon = "";
string_replace(obj_search_box.txt, "|", "");
var file = undefined;
var arrayLength = array_length_1d(obj_screen_controller.Saves);
var i;
for (i = 0; i < arrayLength; i++) {
    if (obj_search_box.txt == obj_screen_controller.Saves[i]) {
        file = string(obj_screen_controller.Saves[i]);
    }
}

if (!is_undefined(file)) {
	scr_set_popup(vk_enter, vk_escape,"Load " + file + "?", scr_launch_selected_game);
} else {
    file = obj_search_box.txt;
	scr_set_popup(vk_enter, vk_escape,"Save doesn\'t exist, create " + file + "?", scr_launch_selected_game);
}
