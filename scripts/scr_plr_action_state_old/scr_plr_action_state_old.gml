//Old
if (action_state == "confirm") {
    hspeed = 0;
    vspeed = 0;
}
//Slice
else if (action_state == Actions.Slice) {
    //Gravity
    scr_custom_gravity();
    image_speed = 0.2;
    sprite_index = spr_plr_sword_swing;
    if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
        hspeed = 0;
    }
    if (image_index == 5) {
        sprite_index = spr_player;
        image_speed = 0;
        action_state = "null";
        
    }
}
//Sitting
else if (action_state == "sitting") {
    hspeed = 0;
    vspeed = 0;
    sprite_index = spr_plr_sit;
}
//Ladder
else if (action_state == Actions.Climb) {
    if (distance_to_object(obj_ladder) == 0) {
        scr_plr_ladder();
    } else {
        action_state = "null";
        speed = 0;
    }
}
//Bow
else if (action_state == Actions.Bow) {
    scr_plr_abi_bow();
    //Gravity
    scr_custom_gravity();
}
//Mining
else if (action_state == Actions.Mining) {
    scr_plr_mining();
}
//Woodcutting
else if (action_state == Actions.Woodcutting) {
    scr_plr_woodcutting();
}
//Fishing
else if (action_state == "fishing") {
    scr_plr_fishing();
}
//Planting seeds
else if (action_state == "planting") {
    hspeed = 0;
    vspeed = 0;
}

//Default movements
else if (global.hudState == HudStates.Null ||
	action_state == "null" ||
    action_state == Actions.Jump ||
    action_state == Actions.Crouch ||
    action_state == Actions.Lift) {
    //Gravity
    if (action_state != Actions.Climb) {
        scr_custom_gravity();
    }
    
    //Too fast falling
    if (vspeed < -4) {
        vspeed = -4;
    }

    //X_Scale
    if (hspeed > 0) {
        image_xscale = 1;
    }

    else if (hspeed < 0) {
        image_xscale = -1;
    }
	
	if (elementalEffect == "frost") {
		hspeed = 0;
		image_speed = 0;
	} else {
		//Movement
		scr_plr_movement();
	}
    /*else if (action_state == Actions.Jump && vspeed < 0)
    {
        sprite_index = spr_plr_jump;
        image_speed = 0;
        image_index = 0;
    }
    else if (vspeed > 0 && place_free(x,y+4))
    {
        action_state = "fall";
        sprite_index = spr_plr_jump;
        image_speed = 0;
        image_index = 0;
    }*/
    //Jump
    if (keyboard_check_pressed(vk_up) && !place_free(x, y+1)) {
        if (action_state == "null" || action_state == Actions.Lift) {
            if (action_state == Actions.Lift) {
                vspeed = -2.5;
            } else {
                vspeed = -3;
                action_state = Actions.Jump;
            }
        }       
    }
    else if (action_state == Actions.Jump && !place_free(x, y+1)) {
        action_state = "null";
    }
    
    //Roll
    if (roll == 1 &&  hspeed > 0 && not keyboard_check(vk_shift)
        && !place_free(x, y+3)) {
        global.damage = 0;
        sprite_index = spr_plr_roll;
        hspeed = 5;
        gravity = 0;
        image_speed = 1;
        image_xscale = 1;
        image_alpha = 0.5;
    }
    else if (roll == 1 && hspeed < 0 && not keyboard_check(vk_shift)
             && !place_free(x, y+3)) {
        global.damage = 0;
        sprite_index = spr_plr_roll;
        hspeed = -5;
        gravity = 0;
        image_speed = 1;
        image_xscale = -1;
        image_alpha = 0.5;
    }
    
    //Crouch
    if (keyboard_check(vk_control)) {
        action_state = Actions.Crouch;
        if (hspeed == 0) {
            action_state = "";
            image_speed = 0;
            sprite_index = spr_plr_crouch;
        }
        else if (keyboard_check(vk_left)) {
            image_speed = 0.2;
            hspeed = -1;
            sprite_index = spr_plr_crouch;
        }
        else if (keyboard_check(vk_right)) {
            image_speed = 0.2;
            hspeed = 1;
            sprite_index = spr_plr_crouch;
        }
        else if (keyboard_check_released(vk_control)) {
            action_state = "null";
            image_speed = 0;
            sprite_index = spr_player; 
        }
    }
    //Stairs
    if (distance_to_object(obj_dec_stairs) == 0) {
        scr_plr_stairs();
        /*if (keyboard_check(vk_right))
        {
            move_contact_solid(90,8);
            move_contact_solid(0,20);
            move_contact_solid(270,8);
        }
        else if (keyboard_check(vk_left))
        {
            move_contact_solid(90,8);
            move_contact_solid(180,20);
            move_contact_solid(270,20);
        }
        move_contact_solid(270,12);
        vspeed = 0;*/
    }
    //Blocked
    /*if (!place_free(x,y-3))
    {
        image_speed = 0;
        sprite_index = spr_plr_crouch;
        alarm[7] = 10; //Fix animation stuck
    }*/
}
///Damage
if (global.damage == 0) {
    image_alpha = 0.7;
}
//Dead
scr_plr_dead();