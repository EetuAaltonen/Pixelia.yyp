if (obj_screen_controller.menu_state == "load_game") {
    obj_screen_controller.menu_state = "main_menu";
    obj_screen_controller.create_buttons = true;
} else if (obj_screen_controller.menu_state == "main_menu") {
    obj_screen_controller.menu_state = "main_menu";
    obj_screen_controller.create_buttons = true;
}

