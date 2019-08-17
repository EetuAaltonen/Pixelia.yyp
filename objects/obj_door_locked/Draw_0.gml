draw_self();
//Image_index
switch (locked)
{
    case true: image_blend = make_colour_hsv(0, 0, 255); mask_index = spr_door; break;
    case false: image_blend = make_colour_hsv(0, 0, 150); mask_index = spr_no_mask; break;
}

