var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);
draw_self();
if (state == Container.Uninit || state == Container.Closed) {
	scr_highlight_self();
} else if (state == Container.Opened) {
	//depth = Depth.HudBg;
	var itemCount = ds_list_size(items);
	if (is_undefined(bgHeight)) {
		var yMargin = 22;
		var padding = 40;
		bgHeight = (itemCount * yMargin) + padding;
	}
	
	scr_hud_draw_background(
		viewWidth / 2, viewHeight / 2,
		200, bgHeight,
		make_color_rgb(87, 56, 23),
		0.95, true, true
	);
}