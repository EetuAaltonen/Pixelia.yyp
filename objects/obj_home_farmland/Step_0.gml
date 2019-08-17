switch (state)
{
    case 1: image_index = 0; break;
    case 2: image_index = 1; break;
    case 3: image_index = 2; break;
    case 4: image_index = 3; break;
    case 5: image_index = 4; break;
    case 6: image_index = 5; break;
    case 7: image_index = 6; break;
    case 8: image_index = 7; break;
    case 9: image_index = 8; break;
    case 10: image_index = 9; break;
    case 11: image_index = 10; break;
}

switch (selected_seed)
{
    case 1: seed_type = "Wheat"; break;
    case 2: seed_type = "Barley"; break;
    case 3: seed_type = "Carrot"; break;
}

if (growth > 0 and growth < 11)
{state = 1;}
else if (growth > 10 and growth < 21)
{state = 2;}
else if (growth > 20 and growth < 31)
{state = 3;}
else if (growth > 30 and growth < 41)
{state = 4;}
else if (growth > 40 and growth < 51)
{state = 5;}
else if (growth > 50 and growth < 61)
{state = 6;}
else if (growth > 60 and growth < 71)
{state = 7;}
else if (growth > 70 and growth < 81)
{state = 8;}
else if (growth > 80 and growth < 91)
{state = 9;}
else if (growth > 90 and growth < 100)
{state = 10;}
else if (growth == 100)
{state = 11;}

if (selecting_seed == true)
{
    if (keyboard_check_released(vk_right) and selected_seed < 4)
    {
        selected_seed += 1;     
    }
    else if (keyboard_check_released(vk_left) and selected_seed > 1)
    {
        selected_seed -= 1;
    }
    else if (keyboard_check_pressed(ord("E")))
    {
        selecting_seed = false;
        obj_player.actionState = Actions.Null;
        obj_player.sprite_index = spr_player;
        growth = 1;
        alarm[1] = 20;
    }
    else if (keyboard_check_released(vk_escape))
    {
        selected_seed = 1;
        selecting_seed = false;
        obj_player.actionState = Actions.Null;
        obj_player.sprite_index = spr_player;
    }
}

if (growth > 0)
{
    sprite_index = asset_get_index(string("spr_home_farmland_" + string(selected_seed)));
}

if (instance_exists(obj_home_purchasable))
{
    if (distance_to_object(obj_home_purchasable) == 0)
    {
        image_alpha = 0.5;
    }
    else
    {
        image_alpha = 1;
    }
}
else
{
    image_alpha = 1;
}

