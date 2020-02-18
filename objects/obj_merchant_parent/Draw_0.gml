draw_self();
// Hightlight Self
scr_highlight_self();

// Interact Icon
if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < 35) {
		draw_sprite(spr_talk, 1, x+(5*image_xscale), y-17);
	}
}