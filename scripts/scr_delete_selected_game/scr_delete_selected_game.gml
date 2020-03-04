var searchBox = obj_search_box;
searchBox.selected = false;
searchBox.blink_icon = "";
var file = (searchBox.txt + ".sav");
file_delete(file);
searchBox.txt = "";
keyboard_string = searchBox.txt;
scr_menu_active_delete_button_check();
if (instance_exists(obj_menu_saved_game)) {
    with (obj_menu_saved_game) instance_destroy();
}
obj_menu_controller.fetchSave = true;
if (file_exists(InventoryFile)) {
    ini_open(InventoryFile);
    if (ini_section_exists(file)) {
        ini_section_delete(file);
    }
    ini_close();
}
if (file_exists(SkillFile)) {
    ini_open(SkillFile);
    if (ini_section_exists(file)) {
        ini_section_delete(file);
    }
    ini_close();
}