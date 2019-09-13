draw_self();
if (state == Container.Uninit || state == Container.Closed) {
	scr_highlight_self();
} else if (state == Container.Opened) {
	depth = Depth.HudBg;
	//Background
	scr_loot_chest_draw_background();
}