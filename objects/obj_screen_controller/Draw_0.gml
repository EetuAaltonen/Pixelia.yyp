var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

if (instance_exists(obj_player)) {
	if (obj_player.action_state == "room_change") {    
        brightness = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
        surface_set_target(brightness);
        draw_clear(c_black);
        surface_reset_target();
        draw_surface_ext(brightness, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 
                         1, 1, 0, c_white, alpha);
    } else {
        surface_free(brightness);
        alpha = 0;
    }
} else {
    surface_free(brightness);
    alpha = 0;
}

//Font
draw_set_font(fnt_menu_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (pause || unfocus) {
    draw_text(viewX + (viewWidth/2), viewY + (viewHeight/2), string_hash_to_newline("Pause"));
}

