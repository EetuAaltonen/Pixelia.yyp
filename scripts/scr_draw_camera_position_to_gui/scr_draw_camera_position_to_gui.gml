var position = argument0;
var dimension = argument1;
var aspect;
switch (dimension) {
	case "x": {
		var viewWidth = camera_get_view_width(view_camera[0]);
		aspect = (position/viewWidth);
		var portWidth = view_get_wport(0);
		return (portWidth*aspect);
	}break;
	case "y": {
		var viewHeight = camera_get_view_height(view_camera[0]);
		var portHeight = view_get_hport(0);
		aspect = (position/viewHeight);
		return (portHeight*aspect);
	}break;
}