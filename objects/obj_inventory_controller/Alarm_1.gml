///Draw toast
if (draw_toast)
{
    toasterSize = ds_list_size(toaster);
    toasterSpeed = 2;
    if (toasterSize > 3)
    {
        toasterSpeed = 1;
    }
    if (toast_y_pos > -40)
    {
        toast = string(ds_list_find_value(toaster, 0));
        toast_y_pos -= 1;
        if (toast_y_pos > -29 and toast_alpha < 1)
        {
            toast_alpha += 0.10;   
        }
        else if (toast_y_pos < -29)
        {
            toast_alpha -= 0.10;
        }
    }
    else
    {
        toast_y_pos = 0;
        ds_list_delete(toaster, 0);
        if ((toasterSize - 1) == 0)
        {
            draw_toast = false;
        }
    }
    alarm[1] = toasterSpeed;
}

