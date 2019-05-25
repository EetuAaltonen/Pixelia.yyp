//Instance destroy
if (image_alpha == 0) {
    obj_player.highlight = false;
	scr_plr_set_action_state_null();
    instance_destroy();
}