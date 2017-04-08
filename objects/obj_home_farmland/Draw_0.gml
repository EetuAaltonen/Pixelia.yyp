draw_self();
if (image_alpha == 1)
{
    draw_text_colour(x, y-10, string_hash_to_newline(string(string(growth) + " %")),c_black, c_black, c_black, c_black, 1);
    
    if (selecting_seed == true)
    {
        draw_text_colour(x, y-20, string_hash_to_newline(string(seed_type)),c_black, c_black, c_black, c_black, 1);
    }
}

