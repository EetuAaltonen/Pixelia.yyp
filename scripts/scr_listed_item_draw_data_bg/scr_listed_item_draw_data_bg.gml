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
		xPadding = render[RenderData.BgXPadding];
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
				}break;
				default: {
					scr_hud_draw_background(
						xPos + render[RenderData.MarginLeft], yPos,
						bgWidth + (borderPadding * 2),
						bgHeight + (borderPadding * 2),
						render[RenderData.BorderColor],
						1, false, true
					);
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
			}break;
			default: {
				scr_hud_draw_background(
					xPos + borderPadding + render[RenderData.MarginLeft], yPos,
					bgWidth, bgHeight,
					render[RenderData.BgColor],
					render[RenderData.BgAlpha],
					false, true
				);
			}
		}
		draw_set_alpha(1);
	}
}

// Draw equipped mark
if (equipmentIndex != undefined ||
	(global.hudState == HudStates.Crafting)) {
	if (equipmentIndex > -1 || selected) {
		draw_sprite_ext(spr_listed_item_equipped_mark, 1,
		xPos + 20, yPos + 12,
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, 1);
	} else {
		draw_sprite_ext(spr_listed_item_equipped_mark, 0,
		xPos + 20, yPos + 12,
		GameGuiRatio, GameGuiRatio,
		image_angle, c_white, 1);
	}
}