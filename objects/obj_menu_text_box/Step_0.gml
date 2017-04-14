///Return place holder if empty
if (selected == false && txt == "")
{
    txt = place_holder;
}

///Instance destroy
if (room != Menu)
{
    //Destroy function
    if (global.hudState == "inventory1" || string_pos("Equipments", string(global.hudState)))
    {
        if (obj_inventory_controller.pageUpdate == true)
        {
            instance_destroy();
        }
    }
    else if (global.hudState != "inventory1" || !string_pos("Equipments", string(global.hudState)))
    {
        instance_destroy();
    }
}

