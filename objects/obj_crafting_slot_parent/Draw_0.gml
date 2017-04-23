///Highlight when filled
draw_self();
if (spriteIndex != false)
{
	var spriteGetIndex = asset_get_index(spriteIndex);
	image_blend = make_colour_hsv(0, 0, 150);
	draw_sprite(spriteGetIndex, 0, x, y);
}
else
{
    image_blend = make_colour_hsv(0, 0, -1);
}
