var position = argument0;
var dimension = argument1;
var cameraPos;
if (dimension == "x") {
	cameraPos = camera_get_view_x(view_camera[0]);
	return (position-cameraPos) * GameGuiRatio;		
} else {
	cameraPos = camera_get_view_y(view_camera[0]);
	return (position-cameraPos) * GameGuiRatio;
}