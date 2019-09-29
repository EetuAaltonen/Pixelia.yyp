var xPos, yPos, icon, desc;
var textMargin = 20;
var bgWidth = 160;
var bgHeight = 41;
var bgPadding = 20;
var borderPadding = 4;

scr_draw_set_font(
	fnt_draw_gui_small,
	fa_left, fa_center,
	c_black, 1
);

var i, info;
var infoCount = array_length_1d(controlsInfo);
for (i = 0; i < infoCount; i++) {
	info = controlsInfo[i];
	xPos = info[HudControlInfo.XPos];
	yPos = info[HudControlInfo.YPos];
	icon = info[HudControlInfo.Icon];
	desc = info[HudControlInfo.Description];
	
	scr_hud_draw_background(
		xPos, yPos,
		bgWidth, bgHeight,
		make_color_rgb(48, 46, 44),
		1, false, false
	);
	xPos += borderPadding;
	
	scr_hud_draw_background(
		xPos, yPos + borderPadding,
		bgWidth - (borderPadding * 2),
		bgHeight - (borderPadding * 2),
		make_color_rgb(71, 64, 55),
		1, false, false
	);
	
	xPos += bgPadding;
	yPos += (bgHeight / 2);
	
	draw_sprite_ext(icon, 0, xPos, yPos, guiWRatio, guiHRatio, image_angle, c_white, 1);
	
	xPos += textMargin;
	draw_text(xPos, yPos, desc);
}

/*switch (global.hudState) {
	case HudStates.Inventory: {
		if (global.hudAction == HudActions.Backpack) {
			mouseInfoList = [
				[]
			];
			// draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.UseEquip]);
			// draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		} else if (global.hudAction == HudActions.Equipment) {
			// draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Equip]);
			// draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		}
	}break;
	default: {
				
	}
}

/*var yPos = 274;
var xPos1 = 299;
var xPos2 = 363;
switch (global.hudState) {
	case HudStates.Inventory: {
		if (global.hudAction == HudActions.Backpack) {
			draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.UseEquip]);
			draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		}
		if (global.hudAction == HudActions.Equipment) {
			draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Equip]);
			draw_text(scr_gui(xPos2,"x"), scr_gui(yPos,"y"), HudActionText[HudActions.Drop]);
		}
	}break;
	default: {
		draw_text(scr_gui(xPos1,"x"), scr_gui(yPos,"y"), HudActionText[global.hudAction]);
	}
}

if (global.hudState != HudStates.Null) {
	switch (global.hudState) {
		case HudStates.Inventory: {
			draw_sprite(spr_inv_item_price_bg, 0, 284, 267);
			draw_sprite(spr_controls_mouse, 0, 288, 271);

			if (global.hudAction == HudActions.Backpack ||
				global.hudAction == HudActions.Equipment) {
				draw_sprite(spr_inv_item_price_bg, 0, 348, 267);
				draw_sprite(spr_controls_mouse, 1, 352, 271);
			}
		}break;
		case HudStates.Shop: {
			draw_sprite(spr_inv_item_price_bg, 0, 284, 267);
				draw_sprite(spr_controls_mouse, 0, 288, 271);
		}break;
	}
}