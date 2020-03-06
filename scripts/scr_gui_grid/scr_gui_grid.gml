/// @description ???
/// @param index - ???
/// @param dir - ???
/// @return Float - GUI position

var index = argument0;
var dir = argument1;

var guiWidth = GuiWidth;
var guiHeight = GuiHeight;
var gridDivider = 100;
var guiPos = 0;
if (dir == Grid.Row) {
	guiPos = guiWidth * (index / gridDivider);
} else {
	guiPos = guiHeight * (index / gridDivider);
}
return guiPos;