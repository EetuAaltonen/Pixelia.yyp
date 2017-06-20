draw_self();
if (distance_to_point(target_x, target_y) > 20)
{
    draw_text(x-20, y-20, string(distance_to_goal * 2) + " km");
}
else
{
    draw_text(x-20, y-20, string(round(distance_to_point(target_x, target_y)) * 2) + " km");
}

