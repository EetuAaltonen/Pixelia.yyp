/// @description Craft item and remove materials from inventory
/// @param data - Item to craft
/// @param recipeMaterials - List of materials to remove from inventory
/// @return Void

var index = argument0;
var dir = argument1;

var cameraX = camera_get_view_x(view_camera[0]);
var cameraY = camera_get_view_y(view_camera[0]);
var gridStep = 16;
var pos = 0;

if (AspectRatio > 1) {
	// Landscape
	if (dir == Grid.Row) {
		pos = (gridStep * index);
	} else {
		pos = (gridStep * index) / AspectRatio;
	}
	// display_set_gui_size(GuiWidth, GuiHeight / AspectRatio);
} else {
	// Portait
	if (dir == Grid.Row) {
		pos = (gridStep * index) * AspectRatio;
	} else {
		pos = (gridStep * index);
	}
	// display_set_gui_size(GuiWidth * AspectRatio, GuiHeight);
}
return pos / GameGuiRatio;