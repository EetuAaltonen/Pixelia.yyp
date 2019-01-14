var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

draw_sprite(spr_inv_item_count_bg, 0, viewX+310, viewY+267);
draw_sprite(spr_controls_mouse, 0, viewX+314, viewY+271);

if (global.hudState == "inventoryBackpack" ||
	global.hudState == "inventoryEquipments") {
	draw_sprite(spr_inv_item_count_bg, 0, viewX+374, viewY+267);
	draw_sprite(spr_controls_mouse, 1, viewX+378, viewY+271);	
}
