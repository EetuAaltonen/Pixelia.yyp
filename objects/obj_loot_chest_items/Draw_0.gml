draw_self();
depth = 0;
if (state == Container.Uninit || state == Container.Closed) {
	scr_highlight_self();
} else if (state == Container.Opened) {
	depth = -6000;
	//Background
	scr_loot_chest_draw_background();
}