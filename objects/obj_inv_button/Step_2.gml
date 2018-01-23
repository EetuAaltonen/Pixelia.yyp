//Selected
if (hudState != "null") {
	if (hudState == global.hudState) {
	    image_blend = make_colour_hsv(0, 0, 150);
	} else {
	    image_blend = make_colour_hsv(0, 0, -1);
	}
}