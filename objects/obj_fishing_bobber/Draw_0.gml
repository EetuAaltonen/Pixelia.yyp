draw_self();

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

///Draw fishing line
var targetX, targetY;
if (instance_exists(obj_player)) {
    if (obj_player.image_xscale == 1) {
        targetX = obj_player.x + 9;
        targetY = obj_player.y - 7;
    } else {
        targetX = obj_player.x - 9;
        targetY = obj_player.y - 7;
    }
} else {
    instance_destroy();
}
draw_line_colour(x, y-4, targetX, targetY, c_gray, c_gray);


///Catching fish
draw_self();
if (catchFish) {
	if (global.popUp = "ready alert") {
		scr_pop_up("Be ready!");
	} else {
	    depth = -4999;
	    draw_sprite(spr_fishing_mini_game_bg, 0, viewX+(viewWidth/2), viewY+(viewHeight/2));
	    draw_sprite_ext(spr_fishing_mini_game_area_2, 0, viewX+(viewWidth/2) - (area1Xscale/2*4), viewY+(viewHeight/2), area1Xscale*4, 1, 0, c_white, 1);
	    draw_sprite_ext(spr_fishing_mini_game_area_1, 0, viewX+(viewWidth/2) - area1Xscale/2, viewY+(viewHeight/2), area1Xscale, 1, 0, c_white, 1);
	    draw_sprite_ext(spr_fishing_bobber, 0, viewX+(viewWidth/2) + bobberX, viewY+(viewHeight/2), 3, 3, imageAngle, c_white, 1);
    
	    if (bobberSpeed == 0) {
	        //Font
	        draw_set_font(fnt_inventory_text);
	        draw_set_color(c_black);
	        draw_set_halign(fa_center);
	        draw_set_valign(fa_middle);
        
	        draw_text(viewX+(viewWidth/2), viewY+(viewHeight/2) - 20,string(successText));
	    }
	}
}

