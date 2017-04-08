//Menu state
menu_state = "main_menu";

instance_create(x + sprite_width/2 + 48, y, obj_menu_orb_of_euphoria);
instance_create(x - sprite_width/2 - 48, y, obj_menu_orb_of_dysforia);

obj_menu_orb_of_euphoria.target_x = x + sprite_width/2 + 48;
obj_menu_orb_of_euphoria.target_y = y;
obj_menu_orb_of_dysforia.target_x = x - sprite_width/2 - 48;
obj_menu_orb_of_dysforia.target_y = y;


