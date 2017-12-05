if (keyboard_check(vk_control)) {
    action_state = "crouch";
    if (hspeed == 0) {
        action_state = "";
        image_speed = 0;
        sprite_index = spr_plr_down;
    } else if (keyboard_check(vk_left)) {
        image_speed = 0.2;
        hspeed = -1;
        sprite_index = spr_plr_down;
    } else if (keyboard_check(vk_right)) {
        image_speed = 0.2;
        hspeed = 1;
        sprite_index = spr_plr_down;
    } else if (keyboard_check_released(vk_control)) {
        action_state = "null";
        image_speed = 0;
        sprite_index = spr_player; 
    }
}