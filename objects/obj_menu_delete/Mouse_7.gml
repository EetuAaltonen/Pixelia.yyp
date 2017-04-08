///Delete exists save
if (image_blend != make_colour_hsv(0, 0, 150))
{
    var file = (string(obj_menu_text_box.txt) + ".sav");
    if (file_exists(file))
    {
        if show_question(("Delete " + file + "?"))
        {
            obj_menu_text_box.selected = false;
            obj_menu_text_box.blink_icon = ""
            file_delete(file);
            obj_menu_text_box.txt = "";
            keyboard_string = obj_menu_text_box.txt;
            if (instance_exists(obj_menu_saved_game))
            {
                with (obj_menu_saved_game) instance_destroy();
            }
            obj_screen_controller.read_saves = true;
            if (file_exists("Inventory.sav"))
            {
                ini_open("Inventory.sav");
                if (ini_section_exists(file))
                {
                    ini_section_delete(file);
                }
                ini_close();
            }
            if (file_exists("SkillTree.sav"))
            {
                ini_open("SkillTree.sav");
                if (ini_section_exists(file))
                {
                    ini_section_delete(file);
                }
                ini_close();
            }
        }
    }
}

