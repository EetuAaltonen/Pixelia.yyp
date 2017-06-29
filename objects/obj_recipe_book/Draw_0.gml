draw_self();

if (showRecipeBook) {
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	var viewWidth = camera_get_view_width(view_camera[0]);
	var viewHeight = camera_get_view_height(view_camera[0]);
	
	///Inventory
	//Font
	draw_set_font(fnt_inventory_text);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_sprite(spr_book_bg, 0, viewX+(viewWidth/2), viewY+(viewHeight/2));
	draw_text(viewX+((viewWidth/2)-90), viewY+((viewHeight/2)+78), string(currentPage+1));
	if ((currentPage+2) <= maxPage) {
		draw_text(viewX+((viewWidth/2)+90), viewY+((viewHeight/2)+78), string(currentPage+2));
	}
	
	draw_set_font(fnt_inventory_text);
	draw_set_halign(fa_left);
	for (var i=0; i < recipeCount; i++) {
		var recipe = knownRecipes[i];
		var ingredients = recipe[1];
		recipe = recipe[0];
		draw_text(viewX+95,viewY+((viewHeight/2)-73+(20*i)), recipe);
		draw_text(viewX+95,viewY+((viewHeight/2)-73+10+(20*i)),
				  ingredients[0] + ", " + ingredients[1] + ", " + ingredients[2]);
	}
}