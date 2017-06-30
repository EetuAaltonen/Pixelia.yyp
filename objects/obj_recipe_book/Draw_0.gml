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
	/*if ((currentPage+2) <= maxPage) {
		draw_text(viewX+((viewWidth/2)+90), viewY+((viewHeight/2)+78), string(currentPage+2));
	}*/
	if (recipeCount > 0) {
		var drawCount;
		if (recipeCount > recipesPerPage) {
		    if ((recipeCount - ((currentPage+1)*recipesPerPage)) > 0 and currentPage == 0) {
		        drawCount = recipesPerPage;
        
		    } else if ((recipeCount - ((currentPage+1)*recipesPerPage)) > 0 and
		            currentPage > 0) {
		        drawCount = ((currentPage*recipesPerPage)*2);
		    } else {
		        drawCount = recipeCount;
		    }
		} else {
		    drawCount = recipeCount;
		}

		draw_set_halign(fa_left);
		var margin = 0;
		for (var i=(currentPage*recipesPerPage); i < drawCount; i++) {
			var recipe = knownRecipes[i];
			var ingredients = recipe[1];
			recipe = recipe[0];
			if (createOnce) {
				instance_create(viewX+95,viewY+((viewHeight/2)-73+(20*margin)),obj_clickable_text);
				var clickableText = instance_nearest(viewX+95,viewY+((viewHeight/2)-73+(20*margin)),obj_clickable_text);
				(clickableText).text = recipe;
				(clickableText).textFont = fnt_medium_text;
				(clickableText).textHighlightColor = c_yellow;
				(clickableText).textColor = c_black;
				(clickableText).tempColor = c_black;
				(clickableText).depth = depth-1;
			}
			draw_set_font(fnt_small_text);
			draw_text(viewX+100,viewY+((viewHeight/2)-73+10+(20*margin)),
					  ingredients[0] + ", " + ingredients[1] + ", " + ingredients[2]);
			margin++;
		}
		createOnce = false;
	} else {
		draw_set_font(fnt_medium_text);
		draw_set_halign(fa_left);
		draw_text(viewX+95,viewY+((viewHeight/2)-73), "Recipe book is empty...");
	}
}
draw_set_halign(fa_center);
draw_set_font(fnt_small_text);
draw_text(x+(sprite_width/2), y+(sprite_height)+8, "Recipes")