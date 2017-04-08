//Move orbs when meeting mouse
if (instance_exists(obj_menu_orb_of_euphoria) && instance_exists(obj_menu_orb_of_dysforia))
{
    if (distance_to_object(obj_mouse) == 0)
    {
        obj_menu_orb_of_euphoria.target_x = x + sprite_width/2 + 48;
        obj_menu_orb_of_euphoria.target_y = y;
        obj_menu_orb_of_dysforia.target_x = x - sprite_width/2 - 48;
        obj_menu_orb_of_dysforia.target_y = y;
    }
}

