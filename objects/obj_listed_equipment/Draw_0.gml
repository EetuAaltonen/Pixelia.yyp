draw_sprite(spr_inv_equip_bg, 0, x-10, y-10);
if (itemImage != "null") {
	draw_sprite(itemImage,0,x,y);
} else {
	draw_sprite(spr_aim,0,x,y);	
}