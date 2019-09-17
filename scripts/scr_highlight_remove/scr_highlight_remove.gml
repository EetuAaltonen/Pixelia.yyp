image_blend = make_colour_hsv(0, 0, 255);
global.highlightedObject = undefined;
if (instance_exists(obj_player)) {
	obj_player.highlight = false;
}