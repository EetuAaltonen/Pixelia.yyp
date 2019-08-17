if (image_alpha == 1)
{
    if (growth == 0 and harvesting == false and
        selecting_seed == false and obj_player.actionState = Actions.Null)
    {
        obj_player.actionState = "planting";
        selecting_seed = true;   
    }
    else if (growth == 100)
    {
        harvesting = true;
        growth = 0;
        sprite_index = spr_home_farmland;
        alarm[2] = 30;
    }
}

