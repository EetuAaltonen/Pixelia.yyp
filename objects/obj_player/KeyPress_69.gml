///@description Use
///Use
if (global.hudState == "null") {
    if (actionState == "null" || actionState == "jump") {
        instance_create(x,y,obj_use);
    }
}


///Reset action state
if (!global.popUp) {
	if (action_state == "mining" ||
	    action_state == "woodcutting" ||
	    action_state == "sitting" ||
	    action_state == "fishing") {
	    scr_plr_set_action_state_null();
	}
}

