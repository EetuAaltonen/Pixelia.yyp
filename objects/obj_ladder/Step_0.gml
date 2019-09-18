if (scr_interact_with_player()) {
	obj_player.x = x;
	obj_player.y -= 10; 
	obj_player.actionState = Actions.Climb;
	image_blend = scr_highlight_default_value();
	obj_player.highlight = false;
}