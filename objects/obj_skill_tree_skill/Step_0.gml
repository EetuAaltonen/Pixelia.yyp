///Fill info
if (get_attributes == true)
{
    scr_st_skill_info();
    sprite_index = asset_get_index(string(Sprite[id_x, id_y]));
    name = Name[id_x, id_y];
    bonus = Bonus[id_x, id_y];
    //price = Price[id_x, id_y];
    scr_st_check_skill_state();
    
    info_txt = price;
    alarm[1] = blend_time;
    get_attributes = false;
}

///Destroy function
if (global.hudState == "inventory2")
{
    if (obj_inventory_controller.pageUpdate == true)
    {
        instance_destroy();
    }
}
else
{
    instance_destroy();
}

