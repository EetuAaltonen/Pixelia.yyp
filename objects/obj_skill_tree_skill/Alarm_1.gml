if (unlocked == true)
{   
    if (image_blend_ > min_image_blend_)
    {
        image_blend_ -= blend_amount;
        alarm[1] = blend_time;
    }
}

