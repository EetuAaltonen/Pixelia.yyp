if global.pause==0
{    
    if image_alpha > 0
    {
        image_alpha=image_alpha-0.1;
        alarm[2] = 100;
    }
    else if image_alpha <=0
    {
        alarm[1] = 1000;
    }
}
else
{    
    if image_alpha > 0
    {
        image_alpha=image_alpha-0;
        alarm[2] = 100;
    }
    else if image_alpha <=0
    {
        alarm[1] = 1000;
    }
}

