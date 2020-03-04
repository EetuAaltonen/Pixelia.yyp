/// @description ???
/// @param position - ???
/// @param dimension - ???
/// @return Float - Position on GUI

var position = argument0;
var dimension = argument1;
var guiPos = 0;
var cameraPos;
if (dimension == Dim.X) {
	cameraPos = camera_get_view_x(view_camera[0]);
	guiPos = position - cameraPos;
} else {
	cameraPos = camera_get_view_y(view_camera[0]);
	guiPos = position - cameraPos;
}
return guiPos * GameGuiRatio;