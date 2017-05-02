draw_self();

draw_set_font(fnt_enemies_stats);

//draw_sprite(spr_aim, 0, x +(20*image_xscale), y);
//draw_sprite(spr_aim, 0, x +(15*image_xscale), y - 22);

if (!attack) {
	if (jump) {
		text = "Jump";
	} else {
		if (text == "Jump") {
			text = "";
		}
	}
}
if (instance_exists(obj_player)) {
	draw_text(x, y-10, text);
}