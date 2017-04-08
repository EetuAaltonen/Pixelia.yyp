///Draw self
if (room == Menu)
{
    draw_self();
}
else if (room == First_loading)
{
}
else
{
    if (global.hudState != "null")
    {
        draw_self();
    }
}

