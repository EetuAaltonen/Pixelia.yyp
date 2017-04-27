draw_self();
scr_highlight_self();

//Draw aim
//Left
draw_sprite(spr_aim, 0, x-(sprite_width/3), y+2+(sprite_height/2));
//Left Corner
draw_sprite(spr_aim, 0, x-sprite_width, y+2+(sprite_height/2));
//Left Side
draw_sprite(spr_aim, 0, x-2-sprite_width, y);
//Right
draw_sprite(spr_aim, 0, x+(sprite_width/3), y+2+(sprite_height/2));
//Right Corner
draw_sprite(spr_aim, 0, x+sprite_width, y+2+(sprite_height/2));
//Right Side
draw_sprite(spr_aim, 0, x+2+sprite_width, y);

//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Left
var leftContact = place_meeting(x-(sprite_width/2), y+4+(sprite_height/2), obj_solidify_parent);
//Left Corner
var leftCorner = place_free(x-(sprite_width), y+2+(sprite_height/2));
//Left Side
var leftSide = place_free(x-2-sprite_width, y);

//Right
var rightContact = place_meeting(x+(sprite_width/2), y+4+(sprite_height/2), obj_solidify_parent);
//Right Corner
var rightCorner = place_free(x+sprite_width, y+2+(sprite_height/2));
//Right Side
var rightSide = place_free(x+2+sprite_width, y);

draw_text(x, y,  string(leftSide) + "," + string(leftCorner) + "," + string(leftContact) + ":" +
				 string(rightSide) + "," + string(rightCorner) + "," + string(rightContact))