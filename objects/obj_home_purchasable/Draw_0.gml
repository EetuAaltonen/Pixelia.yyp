draw_self();
draw_text_colour(x, y-10, string_hash_to_newline(string(string(price) + " $")),c_black, c_black, c_black, c_black, 1);

if (i > 0)
{
    draw_text_colour(x, y-30, string_hash_to_newline(string("Hold \'E\' to confirm...")),c_black, c_black, c_black, c_black, 1);
}

