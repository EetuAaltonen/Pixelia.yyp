/// @description ???
/// @param items - ???

//Font
draw_set_font(fnt_draw_gui_medium);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
	
var xPos = scr_pos_to_gui(x, Dim.X);
var yPos = scr_pos_to_gui(y+1, Dim.Y);
var renderDataCount = array_length_1d(renderData);
var render, textXPos, i;
	
for (i = 0; i < renderDataCount; i++) {
	render = renderData[i];
	textXPos = xPos + render[RenderData.MarginLeft] + render[RenderData.BgXPadding];
	draw_set_color(c_black);
	switch (render[RenderData.Index])	{
		case ItemData.Sprite: {
			draw_sprite_ext(
				data[ItemData.Sprite], 0,
				scr_pos_to_gui(x, Dim.X),
				scr_pos_to_gui(y, Dim.Y),
				GameGuiRatio, GameGuiRatio,
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
			draw_text(textXPos, yPos, string(data[render[RenderData.Index]]) + "x");
		}break;
		case ItemData.Weight: {
			//Item Weight
			draw_text(textXPos, yPos, string(data[render[RenderData.Index]]) + "Pw");	
		}break;
		case ItemData.Price: {
			//Item Price
			if (global.hudAction == HudActions.Buy) {
				if (data[ItemData.Price] > global.coins) {
					draw_set_color(c_red);
				}
			}
			draw_text(textXPos, yPos, string(data[render[RenderData.Index]]) + "G");
		}break;
	}
}