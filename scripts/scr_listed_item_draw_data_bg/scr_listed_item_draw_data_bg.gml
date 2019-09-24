/// @description ???
/// @param items - ???

// Background
var xPadding, bgWidth, bgHeight, borderPadding;
var renderDataCount = array_length_1d(renderData);
var render, i;

var xPos = scr_position_to_gui(x, "x");
var yPos = scr_position_to_gui(y, "y");
	
for (i = 0; i < renderDataCount; i++) {
	render = renderData[i];
		
	if ((array_length_1d(render) - 1) >= RenderData.BgAlpha) {
		xPadding = render[RenderData.bgXPadding];
		bgWidth = render[RenderData.BgWidth];
		bgHeight = render[RenderData.BgHeight];
		borderPadding = render[RenderData.BorderPadding];
			
		// Box border
		if ((array_length_1d(render) - 1) >= RenderData.BgAlpha) {
			switch (render[RenderData.Index])	{
				case ItemData.Sprite: {
					scr_hud_draw_background(
						xPos, yPos,
						bgWidth + (borderPadding * 2),
						bgHeight + (borderPadding * 2),
						render[RenderData.BorderColor],
						render[RenderData.BorderAlpha],
						true, true
					);
					/*draw_rectangle(
						x - ((bgWidth / 2)) - borderPadding,
						y - ((bgHeight / 2)) - borderPadding,
						x + ((bgWidth / 2)) + borderPadding,
						y + ((bgHeight / 2)) + borderPadding,
						false
					);*/
				}break;
				default: {
					scr_hud_draw_background(
						xPos + render[RenderData.TextMargin], yPos,
						bgWidth + (borderPadding * 2),
						bgHeight + (borderPadding * 2),
						render[RenderData.BorderColor],
						1, false, true
					);
					/*textMargin = render[RenderData.TextMargin];
					draw_rectangle(
						x + (textMargin - borderPadding),
						y - (bgHeight / 2) - borderPadding,
						x + (textMargin + bgWidth + borderPadding),
						y + (bgHeight / 2) + borderPadding,
						false
					);*/
				}
			}
		}
		
		// Box			
		switch (render[RenderData.Index])	{
			case ItemData.Sprite: {
				scr_hud_draw_background(
					xPos, yPos,
					bgWidth, bgHeight,
					render[RenderData.BgColor],
					render[RenderData.BgAlpha],
					true, true
				);
				/*draw_rectangle(
					x - ((bgWidth / 2)),
					y - ((bgHeight / 2)),
					x + ((bgWidth / 2)),
					y + ((bgHeight / 2)),
					false
				);*/
			}break;
			default: {
				scr_hud_draw_background(
					xPos + borderPadding + render[RenderData.TextMargin], yPos,
					bgWidth, bgHeight,
					render[RenderData.BgColor],
					render[RenderData.BgAlpha],
					false, true
				);
				/*textMargin = render[RenderData.TextMargin];
				draw_rectangle(
					x + (textMargin),
					y - (bgHeight / 2),
					x + (textMargin + bgWidth),
					y + (bgHeight / 2),
					false
				);*/
			}
		}
		draw_set_alpha(1);
	}
}
	
//draw_self();
	
// Draw equipped mark
if (equipmentIndex != undefined) {
	if (equipmentIndex > -1) {
		draw_sprite(spr_listed_item_equipped_mark, 1, x+10, y+6);
	} else {
		draw_sprite(spr_listed_item_equipped_mark, 0, x+10, y+6);
	}
}