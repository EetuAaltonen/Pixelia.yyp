///Stamina usage
if (instance_exists(obj_player))
{
    if (global.stamina > (10 + global.staminaPlus))
    {
        global.stamina = (10 + global.staminaPlus);
    }
    else if (global.stamina < 0)
    {
        global.stamina = 0;
    }
    
    if (global.stamina >= 0 
        and obj_player.hspeed > 2 
        and keyboard_check(vk_shift)  
        and staminaUsage == false)
    {
        staminaUsage = true;
        staminaRegerate = false;
        global.stamina -= 0.5;
        alarm[2] = 5;
        alarm[3] = 50;
    }
    else if (global.stamina >= 0 
        and obj_player.hspeed < -2 
        and keyboard_check(vk_shift)
        and staminaUsage == false)
    {
        staminaUsage = true;
        staminaRegerate = false;
        global.stamina -= 0.5;
        alarm[2] = 5;
        alarm[3] = 50;
    }
    else if (staminaUsage == false and obj_player.roll == 1 
             || staminaUsage == false and obj_player.slice == 1)
    {
        staminaUsage = true;
        staminaRegerate = false;
        alarm[2] = 5;
        alarm[3] = 50;
    }
}

///Stamina image index
switch (global.stamina)
{
    case 20: image_index = 0; break;
    case 19: image_index = 1; break;
    case 18: image_index = 2; break;
    case 17: image_index = 3; break;
    case 16: image_index = 4; break;
    case 15: image_index = 5; break;
    case 14: image_index = 6; break;
    case 13: image_index = 7; break;
    case 12: image_index = 8; break;
    case 11: image_index = 9; break;
    case 10: image_index = 10; break;
    case 9: image_index = 11; break;
    case 8: image_index = 12; break;
    case 7: image_index = 13; break;
    case 6: image_index = 14; break;
    case 5: image_index = 15; break;
    case 4: image_index = 16; break;
    case 3: image_index = 17; break;
    case 2: image_index = 18; break;
    case 1: image_index = 19; break;
    case 0: image_index = 20; break;
}

