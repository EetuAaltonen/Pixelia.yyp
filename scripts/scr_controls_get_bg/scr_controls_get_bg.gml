var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

draw_sprite(spr_inv_item_price_bg, 0, viewX+284, viewY+267);
draw_sprite(spr_controls_mouse, 0, viewX+288, viewY+271);

if (global.hudState == "inventoryBackpack" ||
	global.hudState == "inventoryEquipments") {
	draw_sprite(spr_inv_item_price_bg, 0, viewX+348, viewY+267);
	draw_sprite(spr_controls_mouse, 1, viewX+352, viewY+271);
}
