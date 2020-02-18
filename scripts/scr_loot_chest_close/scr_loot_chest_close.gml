state = Container.Closed;
image_index = 0;
depth = Depth.Interaction;
	
if (ds_list_size(items) <= 0) {
	state = Container.Empty;
	image_index = (image_number-1);
}
scr_highlight_remove();
scr_listed_item_remove();
scr_set_global_hud_state(HudStates.Null);