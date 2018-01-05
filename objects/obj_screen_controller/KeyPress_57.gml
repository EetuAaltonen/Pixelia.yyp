//if (room != Menu) {
    if (window_get_fullscreen()) {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
//}

/*if view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface)
{
    view_wport = view_wview;
    view_hport = view_hview;
    surface_resize(application_surface, view_wview,view_hview);
    display_set_gui_size(view_wview, view_hview);
    window_set_size(view_wview, view_hview);
}
/*if view_wport[0] != surface_get_width(application_surface) || view_hport[0] != surface_get_height(application_surface)
{
    surface_resize(application_surface, view_wport[0],view_hport[0]);
}*/
//surface_resize(application_surface, view_wview[0]*surface, view_hview[0]*surface);