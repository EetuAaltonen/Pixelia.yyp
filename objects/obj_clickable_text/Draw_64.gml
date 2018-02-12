if (text != "") {	
	var positionX = scr_draw_position_on_screen(x, "x");
	var positionY = scr_draw_position_on_screen(y, "y");
	var posX = scr_draw_camera_position_to_gui(positionX, "x");
	var posY = scr_draw_camera_position_to_gui(positionY, "y");

	//Font
	draw_set_font(fnt_draw_gui_recipe_text);
	draw_set_color(textColor);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	var margin = 5;

	//Draw Self
	var spriteHeight = sprite_get_height(sprite_index);
	var xScale = string_width(text)+(margin*2);
	image_xscale = xScale/global.resHAspect;
	draw_sprite_ext(sprite_index, 0, posX, posY, xScale, global.resHAspect, image_angle, c_white, 1);

	draw_text_color(scr_gui(positionX+margin,"x"), scr_gui(positionY+(spriteHeight/2),"y"), text, textColor, textColor, textColor, textColor, 1);
}