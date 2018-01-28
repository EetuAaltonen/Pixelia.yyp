if (bgColor != "null") {	
	draw_sprite_ext(spr_source_ore_background,image_index,x,y,
					1,1,image_angle,bgColor,1);
}
draw_self();
///Highlight self
if (source > 0) {
    scr_highlight_self();
}