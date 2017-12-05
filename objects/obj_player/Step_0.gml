///Action states
//If some menu is open || Room change || Dialog
if (global.hudState != "null" ||
    action_state == "room_change" ||
    action_state == "dialog" ||
	action_state == "looting" ||
	action_state == "crafting") {
	//Gravity
    scr_custom_gravity();
    hspeed = 0;
    image_speed = 0;
    sprite_index = spr_player;
    
} else {
	scr_plr_action_state();	
}
