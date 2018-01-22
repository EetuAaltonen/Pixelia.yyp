var position = argument0;
var dimension = argument1;
var cameraPos;
switch (dimension) {
	case "x": {
		cameraPos = camera_get_view_x(view_camera[0]);
	}break;
	case "y": {
		cameraPos = camera_get_view_y(view_camera[0]);
	}break;
}
return (position-cameraPos);