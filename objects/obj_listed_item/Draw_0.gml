if (data != "null") {
	// Background
	var textMargin, xPadding, bgWidth, bgHeight, borderPadding;
	var renderDataCount = array_length_1d(renderData);
	var render, i;
	
	for (i = 0; i < renderDataCount; i++) {
		render = renderData[i];
		
		if ((array_length_1d(render) - 1) >= RenderData.BgAlpha) {
			xPadding = render[RenderData.bgXPadding];
			bgWidth = render[RenderData.BgWidth];
			bgHeight = render[RenderData.BgHeight];
			
			// Box border
			if ((array_length_1d(render) - 1) >= RenderData.BgAlpha) {
				draw_set_alpha(render[RenderData.BorderAlpha]);
				draw_set_color(render[RenderData.BorderColor]);
				borderPadding = render[RenderData.BorderPadding];
		
				switch (render[RenderData.Index])	{
					case ItemData.Sprite: {
						draw_rectangle(
							x - ((bgWidth / 2)) - borderPadding,
							y - ((bgHeight / 2)) - borderPadding,
							x + ((bgWidth / 2)) + borderPadding,
							y + ((bgHeight / 2)) + borderPadding,
							false
						);
					}break;
					default: {
						textMargin = render[RenderData.TextMargin];
						draw_rectangle(
							x + (textMargin - borderPadding),
							y - (bgHeight / 2) - borderPadding,
							x + (textMargin + bgWidth + borderPadding),
							y + (bgHeight / 2) + borderPadding,
							false
						);
					}
				}
			}
		
			// Box
			draw_set_alpha(render[RenderData.BgAlpha]);
			draw_set_color(render[RenderData.BgColor]);
			
			switch (render[RenderData.Index])	{
				case ItemData.Sprite: {
					draw_rectangle(
						x - ((bgWidth / 2)),
						y - ((bgHeight / 2)),
						x + ((bgWidth / 2)),
						y + ((bgHeight / 2)),
						false
					);
				}break;
				default: {
					textMargin = render[RenderData.TextMargin];
					draw_rectangle(
						x + (textMargin),
						y - (bgHeight / 2),
						x + (textMargin + bgWidth),
						y + (bgHeight / 2),
						false
					);
				}
			}
			draw_set_alpha(1);
		}
	}
	
	draw_self();
	
	// Draw equipped mark
	if (equipmentIndex != undefined) {
		if (equipmentIndex > -1) {
			draw_sprite(spr_listed_item_equipped_mark, 1, x+10, y+6);
		} else {
			draw_sprite(spr_listed_item_equipped_mark, 0, x+10, y+6);
		}
	}
	
}
