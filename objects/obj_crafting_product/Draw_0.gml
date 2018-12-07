///Highlight when filled
draw_self();
if (product != "null") {
	image_blend = make_colour_hsv(0, 0, 150);
	var spriteWidth = sprite_width;
	var spriteHeight = sprite_height;
	draw_sprite(product[0], 0, x+(spriteWidth/2), y+(spriteHeight/2));
} else {
    image_blend = make_colour_hsv(0, 0, 255);
}