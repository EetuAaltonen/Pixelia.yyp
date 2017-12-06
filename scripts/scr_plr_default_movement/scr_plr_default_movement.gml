//Gravity
scr_custom_gravity();

//Crouch
if (keyboard_check_pressed(vk_control) && !place_free(x, y+1)) {
	if (actionState == "null") {
		actionState = "crouch"
		sprite_index = spr_plr_crouch;
	} else if (actionState == "crouch") {
		actionState = "null";
		sprite_index = spr_player;
	}
}

//Jump
scr_plr_jump();

//Movement
scr_plr_movement();

//Image xscale n speed
scr_plr_image_xscale_n_speed();