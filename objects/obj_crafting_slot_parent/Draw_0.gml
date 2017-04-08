///Highlight when filled
draw_self();
if (spriteIndex != false)
{
    image_blend = make_colour_hsv(0, 0, 150); 
}
else
{
    image_blend = make_colour_hsv(0, 0, -1);
}

