if (scr_interact_with_player()) {
	var player = obj_player;
	player.x = x;
	player.y -= 10; 
	player.actionState = "ladder";
	image_blend = make_colour_hsv(0, 0, -1);
	player.highlight = false;
}