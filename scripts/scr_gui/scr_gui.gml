var position = argument0;
var dimension = argument1;
var viewPort;
if (dimension == "x") {
	viewPort = view_get_xport(0);
} else {
	viewPort = view_get_yport(0);	
}

return (viewPort + scr_draw_camera_position_to_gui(position, dimension));