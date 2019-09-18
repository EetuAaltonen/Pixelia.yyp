draw_self();
//Image_index
switch (closed)
{
    case true: image_blend= scr_highlight_default_value(); mask_index = spr_door; break;
    case false: image_blend= scr_highlight_value(); mask_index = spr_no_mask; break;
}

