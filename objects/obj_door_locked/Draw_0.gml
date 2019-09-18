draw_self();
if (locked) {
	image_blend = scr_highlight_default_value();
	mask_index = spr_door;
} else {
	image_blend = scr_highlight_value;
	mask_index = spr_no_mask;
}