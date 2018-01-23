obj_menu_text_box.selected = false;
obj_menu_text_box.blink_icon = "";
var file = (obj_menu_text_box.txt + ".sav");
file_delete(file);
obj_menu_text_box.txt = "";
keyboard_string = obj_menu_text_box.txt;
scr_menu_active_delete_button_check();
if (instance_exists(obj_menu_saved_game)) {
    with (obj_menu_saved_game) instance_destroy();
}
obj_screen_controller.searchSaves = true;
if (file_exists("Inventory.ini")) {
    ini_open("Inventory.ini");
    if (ini_section_exists(file)) {
        ini_section_delete(file);
    }
    ini_close();
}
if (file_exists("SkillTree.ini")) {
    ini_open("SkillTree.ini");
    if (ini_section_exists(file)) {
        ini_section_delete(file);
    }
    ini_close();
}