if (room != Menu)
{
    if (pause == false)
    {
        instance_deactivate_all(true);
        pause = true;
    }
    else
    {
        instance_activate_all();
        pause = false;
    }
}

