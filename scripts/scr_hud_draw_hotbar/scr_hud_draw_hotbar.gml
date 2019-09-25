var yPos = 600;

///Hotbar background
scr_hud_draw_background(
	0, yPos,
	guiWidth, guiHeight,
	make_color_rgb(102, 86, 61),
	1, false, false
);

//Font
draw_set_font(fnt_draw_gui_small);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var xPadding = 10;
var barHeight = 16;

//Level
draw_text(xPadding, yPos + 20, "Level  " + string(global.level));

//Skill XP
draw_text(xPadding, yPos + 66, "XP  " + string(global.xp) + " / " + string(global.xpLimit));
// Xp bar
scr_hud_draw_background(
	xPadding, yPos + 76,
	guiWidth - (xPadding*2), barHeight,
	make_color_rgb(61, 82, 67),
	1, false, false
);
var barScale = global.xp / global.xpLimit;
scr_hud_draw_background(
	xPadding, yPos + 76,
	(guiWidth - (xPadding*2)) * barScale, barHeight,
	make_color_rgb(23, 207, 75),
	1, false, false
);

draw_set_halign(fa_right);
//Enchanting XP
draw_text(guiWidth - xPadding, yPos + 66, "Ench. XP  " + string(global.enchantingXp) + " / " + string(global.enchantingXpLimit));
// Enchanting Xp bar
scr_hud_draw_background(
	xPadding, yPos + 96,
	guiWidth - (xPadding*2), barHeight,
	make_color_rgb(64, 39, 82),
	1, false, false
);
barScale = global.enchantingXp / global.enchantingXpLimit;
scr_hud_draw_background(
	xPadding, yPos + 96,
	(guiWidth - (xPadding*2)) * barScale, barHeight,
	make_color_rgb(128, 22, 204),
	1, false, false
);
	
draw_set_halign(fa_right);

//Coins
draw_sprite_ext(spr_money_icon, 0, guiWidth - 28,
		        yPos + 35, guiWRatio, guiHRatio,
		        image_angle, c_white, image_alpha);
draw_text(guiWidth - 58, yPos + 35, string(global.coins) + "G");
	
//Potion
draw_sprite_ext(spr_potion_icon, 0, guiWidth - 170,
		        yPos + 35, guiWRatio, guiHRatio,
		        image_angle, c_white, image_alpha);
draw_text(guiWidth - 200, yPos + 35, string(global.potions) + " x");