draw_self();
//Image_index
switch(closed)
{
    case true: image_blend = make_colour_hsv(0, 0, -1); mask_index = spr_door; break;
    case false: image_blend = make_colour_hsv(0, 0, 150); mask_index = spr_no_mask; break;
}

