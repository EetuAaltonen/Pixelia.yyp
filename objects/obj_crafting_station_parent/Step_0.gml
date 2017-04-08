///Press Tab or 'E' to close forge
if (keyboard_check_pressed(ord("E") || keyboard_check_pressed(vk_tab)))
{
    if (global.hudState == hudState)
    {
        //canOpenClose = false;
        global.hudState = "null";
    }
}

