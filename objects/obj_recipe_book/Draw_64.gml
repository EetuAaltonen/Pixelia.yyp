draw_sprite_ext(
	spr_recipe_book, 0,
	scr_position_to_gui(x,"x"), scr_position_to_gui(y,"y"),
	global.resWAspect, global.resHAspect, 0, c_white, 1
);

if (showRecipeBook) {
	var bgWidth = 800;
	var bgHeight = 600;
	var borderPadding = 2;
	
	// Page left
	// Border
	scr_hud_draw_background(
		(guiWidth / 2) - (bgWidth / 4), (guiHeight / 2),
		(bgWidth / 2) + (borderPadding * 2),
		bgHeight + (borderPadding * 2),
		c_black,
		1,
		true, true
	);
	
	// Box
	scr_hud_draw_background(
		(guiWidth / 2) - (bgWidth / 4), (guiHeight / 2),
		(bgWidth / 2), bgHeight,
		c_gray,
		1,
		true, true
	);
	
	// Page right
	// Border
	scr_hud_draw_background(
		(guiWidth / 2) + (bgWidth / 4), (guiHeight / 2),
		(bgWidth / 2) + (borderPadding * 2),
		bgHeight + (borderPadding * 2),
		c_black,
		1,
		true, true
	);
	
	// Box
	scr_hud_draw_background(
		(guiWidth / 2) + (bgWidth / 4), (guiHeight / 2),
		(bgWidth / 2), bgHeight,
		c_gray,
		1,
		true, true
	);
}

// TODO: Fix recipe book
/*if (showRecipeBook) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	var viewWidth = camera_get_view_width(view_camera[0]);
	var viewHeight = camera_get_view_height(view_camera[0]);

	//Font
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	
	//Recipe Book Bg
	draw_sprite_ext(spr_book_bg, 0, scr_gui(viewWidth/2,"x"), scr_gui(viewHeight/2,"y"), global.resWAspect, global.resHAspect, image_angle, c_white, 1);
	
	//Recipe Info Bg
	var outlineWidth = 2;
	var xPos1 = 260;
	var xPos2 = 415;
	var yPos1 = 120;
	var yPos2 = 215;
	
	var imgY = 92;
	var xPosCenter = xPos2-((xPos2-xPos1)/2);
	var sprSize = 15;
	//Recipe Image Bg
	draw_roundrect_color(scr_gui(xPosCenter-(sprSize/2)-10-outlineWidth,"x"),
						 scr_gui(imgY-(sprSize/2)-10-outlineWidth,"y"),
						 scr_gui(xPosCenter+(sprSize/2)+10+outlineWidth,"x"),
						 scr_gui(imgY+(sprSize/2)+10+outlineWidth,"y"),
						 c_black, c_black, false);
	draw_roundrect_color(scr_gui(xPosCenter-(sprSize/2)-10,"x"), scr_gui(imgY-(sprSize/2)-10,"y"),
						 scr_gui(xPosCenter+(sprSize/2)+10,"x"), scr_gui(imgY+(sprSize/2)+10,"y"),
						 c_gray, c_gray, false);
	//Recipe Image
	if (recipeInfo[0] != "null") {
		draw_sprite_ext(recipeInfo[0], 0, scr_gui(xPosCenter,"x"), scr_gui(imgY,"y"),
						1.5*global.resWAspect, 1.5*global.resWAspect, image_angle, image_blend, image_alpha);
	}
	
	//Recipe Info Bg
	draw_roundrect_color(scr_gui(xPos1-outlineWidth,"x"), scr_gui(yPos1-outlineWidth,"y"),
						 scr_gui(xPos2+outlineWidth,"x"), scr_gui(yPos2+outlineWidth,"x"),
						 c_black, c_black, false);
	draw_roundrect_color(scr_gui(xPos1,"x"), scr_gui(yPos1,"y"),
						 scr_gui(xPos2,"x"), scr_gui(yPos2,"x"),
						 c_gray, c_gray, false);
	//Recipe Title
	draw_set_halign(fa_middle);
	draw_set_font(fnt_draw_gui_recipe_title);
	if (recipeInfo[1] != "null") {
		draw_text(scr_gui(xPosCenter,"x"), scr_gui(125,"y"), string_hash_to_newline(recipeInfo[1]));
	}
	//Recipe Info
	draw_set_halign(fa_left);
	draw_set_font(fnt_draw_gui_recipe_text);
	if (recipeInfo[2] != "null") {
		draw_text(scr_gui(270,"x"), scr_gui(150,"y"), string_hash_to_newline(recipeInfo[2]));
	}
}