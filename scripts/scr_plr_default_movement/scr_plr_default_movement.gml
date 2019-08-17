//Gravity
scr_custom_gravity();

//Crouch
if (keyboard_check_pressed(vk_control) && !place_free(x, y+1)) {
	if (actionState == Actions.Null) {
		actionState = Actions.Crouch
		sprite_index = spr_plr_crouch;
	} else if (actionState == Actions.Crouch) {
		actionState = Actions.Null;
		sprite_index = spr_player;
	}
}

//Jump
scr_plr_jump();

//Image xscale n speed
scr_plr_image_xscale_n_speed();

//Movement
scr_plr_movement();