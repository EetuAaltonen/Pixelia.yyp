/// @description ???
/// @param index - ???
/// @param dir - ???
/// @return Float - Room position

var index = argument0;
var dir = argument1;

var cameraX = camera_get_view_x(view_camera[0]);
var cameraY = camera_get_view_y(view_camera[0]);
var pos = 0;
var guiPos;
if (dir == Grid.Row) {
	guiPos = scr_gui_grid(index, dir);
	pos = cameraX + floor(guiPos / GameGuiRatio);
} else {
	guiPos = scr_gui_grid(index, dir);
	pos = cameraY + floor(guiPos / GameGuiRatio);
}
return pos;