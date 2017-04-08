///Start dialog
if (distance_to_object(obj_use) == 0 && image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    if (instance_exists(obj_player))
    {
        obj_player.action_state = "dialog";
        scr_dialog();
    }   
    /*if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
    global.dialog = true;
    if (global.guest == "Beginning")
    {
        global.dialog_text = 1; //Start text number
        global.dialog_max = 2; //End text number
        global.dialog_min = global.dialog_text;
        global.dialog_check2 = global.dialog_max - global.dialog_text+1;
    }
    else
    {
        //Default
        global.dialog_text = 3; //Start text number
        global.dialog_max = 4; //End text number
        global.dialog_min = global.dialog_text;
        global.dialog_check2 = global.dialog_max - global.dialog_text+1;
    }*/
}

/* */
/*  */
