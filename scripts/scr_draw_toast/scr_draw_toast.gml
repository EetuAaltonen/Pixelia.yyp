var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

if (drawToast) {
    var margin = ((string_width(toastMessage)/2)*(-1));
    var bgWidth = (string_width(toastMessage) + 10);
    draw_sprite_ext(spr_toaster_bg,0,viewX+480+margin-(bgWidth/2),
                    viewY+260+toastYPos,
                    bgWidth,1,image_angle,c_black,toastAlpha);
    draw_text_colour(viewX+480+margin, viewY+260+toastYPos, string(toastMessage),
                    c_white, c_white, c_white, c_white, toastAlpha);
}