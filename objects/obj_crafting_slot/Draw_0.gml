///Highlight when filled
draw_self();
if (item != "null") {
	image_blend = scr_highlight_value();
	var spriteWidth = sprite_width;
	var spriteHeight = sprite_height;
	draw_sprite(spriteIndex, 0, x+(spriteWidth/2), y+(spriteHeight/2));
} else {
    image_blend = scr_highlight_default_value();
}