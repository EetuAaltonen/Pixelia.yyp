///Highlight when filled
draw_self();
if (product != "null") {
	image_blend = make_colour_hsv(0, 0, 150);
	draw_sprite(product[0], 0, x, y);
} else {
    image_blend = make_colour_hsv(0, 0, -1);
}