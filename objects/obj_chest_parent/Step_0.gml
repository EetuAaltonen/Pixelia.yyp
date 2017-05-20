//Opened
if (opened) {
	if (!instance_exists(obj_player)) {
		opened = false;
		image_index = 0;
		alarm[1] = 20;
	}
}

//Instance destroy
if (image_alpha == 0)
{
    obj_player.highlight = false;
	scr_plr_set_action_state_null();
    instance_destroy();
}