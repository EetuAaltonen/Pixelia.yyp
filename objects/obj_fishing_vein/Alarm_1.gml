/*//Save to inventory info
itemId = round(random_range(1,2)); //Id
search_id = "food"; //Type
added_amount = 1; //Added amount

switch (itemId)
{
    case 1: instance_create(x, y, obj_salmon_collected); break;
    case 2: instance_create(x, y, obj_tuna_collected); break;
}

//Save to inventory
scr_save_to_inventory();

//Stop fishing
obj_player.action_state = "null";
obj_player.sprite_index = spr_player;
catch_once = true;

/* */
/*  */
