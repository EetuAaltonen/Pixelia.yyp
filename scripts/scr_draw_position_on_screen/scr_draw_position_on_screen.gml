var position = argument0;
var dimension = argument1;
switch (dimension) {
	case "x": {
		var viewX = camera_get_view_x(view_camera[0]);
		return (position-viewX);
	}break;
	case "y": {
		var viewY = camera_get_view_y(view_camera[0]);
		return (position-viewY);
	}break;
}