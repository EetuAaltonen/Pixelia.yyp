///Delete exists save
if (image_blend != make_colour_hsv(0, 0, 150)) {
    file = (string(obj_menu_text_box.txt) + ".sav");
    if (file_exists(file)) {
        scr_set_popup(vk_enter,vk_escape,"Delete " + file + "?",scr_delete_selected_game);
    }
}