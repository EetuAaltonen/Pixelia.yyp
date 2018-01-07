///Highlight when filled
draw_self();
if (item != "null") {
	image_blend = make_colour_hsv(0, 0, 150);
	draw_sprite(spriteIndex, 0, x, y);
} else {
    image_blend = make_colour_hsv(0, 0, -1);
}