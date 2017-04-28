///Collect
if (distance_to_object(obj_use) == 0 && 
    image_blend != make_colour_hsv(0, 0, -1)) {
    if (instance_exists(obj_use)) {
        with (obj_use) instance_destroy();
    }
	if (instance_exists(obj_player)) {
        obj_player.action_state = "dialog";
        var dialogs = ["Uuu.. water", "Fill empty flasks", "Exit"]//scr_get_dialog_options();
		scr_dialog(dialogs);
    }
}