/// @description ???
/// @param items - ???

//Font
draw_set_font(fnt_draw_gui_medium);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
	
var xPos = scr_position_to_gui(x, "x");
var yPos = scr_position_to_gui(y+1, "y");
var renderDataCount = array_length_1d(renderData);
var render, textXPos, i;
	
for (i = 0; i < renderDataCount; i++) {
	render = renderData[i];
	textXPos = xPos + render[RenderData.TextMargin] + render[RenderData.bgXPadding];
	draw_set_color(c_black);
	switch (render[RenderData.Index])	{
		case ItemData.Sprite: {
			draw_sprite_ext(
				data[ItemData.Sprite], 0,
				scr_position_to_gui(x, "x"),
				scr_position_to_gui(y, "y"),
				guiWRatio, guiHRatio,
				image_angle, c_white, 1
			);
		}break;
		case ItemData.Name: {
			draw_set_color(c_black);
			if (data[ItemData.RequiredLevel] > global.level) {
				draw_set_color(c_red);
			}
			draw_text(textXPos, yPos, data[render[RenderData.Index]]);
		}break;
		case ItemData.Count: {
			//Item Count
			draw_text(textXPos, yPos, string(data[render[RenderData.Index]]) + "  x");
		}break;
		case ItemData.Weight: {
			//Item Weight
			draw_text(textXPos, yPos, string(data[render[RenderData.Index]]) + "  Pw");	
		}break;
		case ItemData.Price: {
			//Item Price
			if (global.hudAction == HudActions.Buy) {
				if (data[ItemData.Price] > global.coins) {
					draw_set_color(c_red);
				}
			}
			draw_text(textXPos, yPos, scr_coins_format(data[render[RenderData.Index]]));
		}break;
	}
}
/*
//Item Description
draw_set_color(c_black);
if (data[ItemData.RequiredLevel] > global.level) {
	draw_set_color(c_red);
}
draw_text(scr_gui(41,"x"), scr_gui(yPos,"y"), data[ItemData.Name]);
draw_set_color(c_black);
//Item Count
draw_text(scr_gui(185,"x"), scr_gui(yPos,"y"), string(data[ItemData.Count]) + "  x");
	
if (global.hudState == HudStates.Inventory) {
	//Item Weight
	draw_text(scr_gui(224,"x"), scr_gui(yPos,"y"), string(data[ItemData.Weight]) + "  Pw");	
} else if (global.hudState == HudStates.Shop) {
	//Item Price
	draw_set_color(c_black);
	if (global.hudAction == HudActions.Buy) {
		if (data[ItemData.Price] > global.coins) {
			draw_set_color(c_red);
		}
	}
	draw_text(scr_gui(224,"x"), scr_gui(yPos,"y"), scr_coins_format(data[ItemData.Price]));
	draw_set_color(c_black);
}*/