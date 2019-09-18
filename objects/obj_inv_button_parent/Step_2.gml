///Selected
if (hudState == global.hudState) {
    var imageBlend = 100;
    image_blend = make_colour_hsv(0, 0, imageBlend);
} else {
    image_blend = scr_highlight_default_value();
}