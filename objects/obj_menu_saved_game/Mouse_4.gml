if (instance_exists(obj_menu_text_box))
{
    obj_menu_text_box.txt = string(load_file);
    keyboard_string = obj_menu_text_box.txt;
    obj_menu_text_box.selected = false;
}

