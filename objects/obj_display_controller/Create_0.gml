// Display properties
viewWidth = 1024;
viewHeight = 768;

surface_resize(application_surface, viewWidth, viewHeight);
display_set_gui_size(viewWidth, viewHeight);
window_set_size(viewWidth, viewHeight);
alarm[0] = 1;

room_goto(Menu);

// TODO: Fix display scaling
/*ideal_width = 0;
ideal_height = 256;

var displayWidth = display_get_width();
var displayHeight = display_get_height();

aspect_ratio = displayWidth / displayHeight;

ideal_width = round(ideal_height * aspect_ratio);
//ideal_height = round(ideal_width / aspect_ratio);

// Perfect Pixel Scaling
if (displayWidth mod ideal_width != 0) {
	var d = round(displayWidth / ideal_width);
	ideal_width = displayWidth / d;
}
if (displayHeight mod ideal_height != 0) {
	var d = round(displayHeight / ideal_height);
	ideal_height = displayHeight / d;
}

// Check for odd numbers
if (ideal_width & 1) {
	ideal_width++;
}
if (ideal_height & 1) {
	ideal_height++;
}

var i;
for (i = 1; i < room_last; i++) {
	if (room_exists(i)) {
		//room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height, 0, 0, 1, 1, 0, 0, 0, 0, -1);
		//room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
		room_set_view_enabled(i, true);
	}
}
surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);
// Center window after 1 Step
alarm[0] = 1;

room_goto(Menu);