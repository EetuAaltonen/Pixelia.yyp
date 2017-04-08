draw_self();
if (showtext == true)
{
    draw_set_font(fnt_sign);
    draw_sprite(spr_sign_bg,1,x-63,y-83); 
    draw_text(x-60,y-80,string_hash_to_newline("Testi!# Toimiiko?"));
}

