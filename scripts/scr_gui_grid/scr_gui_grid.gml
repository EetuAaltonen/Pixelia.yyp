/// @description ???
/// @param index - ???
/// @param dir - ???
/// @param _floor - ???
/// @return Float - GUI position

var index = argument0;
var dir = argument1;
var _floor = argument2;

var guiWidth = display_get_gui_width();
var guiHeight = display_get_gui_height();
var gridDivider = 100;
var guiPos = 0;
if (dir == Grid.Row) {
	guiPos = guiWidth * (index / gridDivider);
} else {
	guiPos = guiHeight * (index / gridDivider);
}
if (_floor) {
	guiPos = floor(guiPos);	
}
return guiPos;