obj_menu_text_box.selected = false;
obj_menu_text_box.blink_icon = "";
string_replace(obj_menu_text_box.txt, "|", "");
file = false;
var arrayLength = array_length_1d(obj_screen_controller.Saves);
for (i = 0; i < arrayLength; i++) {
    if (obj_menu_text_box.txt == obj_screen_controller.Saves[i]) {
        file = string(obj_screen_controller.Saves[i]);
    }
}

if (file != false) {
	scr_set_popup(vk_enter,vk_escape,"Load " + file + "?",scr_launch_selected_game);
} else {
    file = obj_menu_text_box.txt;
	scr_set_popup(vk_enter,vk_escape,"Save doesn\'t exist, create " + file + "?",scr_launch_selected_game);
}
