///Bow
if (global.hudState == "null")
{
    if (action_state != "bow")
    {
        if (file_exists("Inventory.sav"))
        {
            ini_open("Inventory.sav");
            //Check bow is equipped
            var key = "Equipment[" + string(5) + "," + string(2) + "]";
            var equppedState = ini_read_string(global.save_file,key,"false");
            if (equppedState == "true")
            {
                //Check arrows are equipped
                key = "Equipment[" + string(5) + "," + string(1) + "]";
                equppedState = ini_read_string(global.save_file,key,"false");
                if (equppedState == "true")
                {
                    equppedState = true;
                }
                else
                {
                    //name = "No equipped arrows!";
                    //scr_add_new_toast();
                }
            }
            else
            {
                //name = "No equipped bow!";
                //scr_add_new_toast();
            }
            if (equppedState)
            {
                //Check arrow count > 0
                key = "Amount[" + string(5) + "," + string(1) + "]";
                var arrowCount = ini_read_real(global.save_file, key, 0);
                if (arrowCount > 0)
                {
                    action_state = "bow";
                    instance_create(x, y, obj_plr_aim);
                    instance_create(x, y, obj_plr_bow);
                    obj_plr_bow.arrowCount = arrowCount;
                    hspeed = 0;
                }
            }
            ini_close();
        }
    }
    else if (action_state == "bow")
    {
        action_state = "null";
        sprite_index = spr_player;
    }
}

