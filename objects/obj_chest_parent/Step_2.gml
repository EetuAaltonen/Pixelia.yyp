//Gravity
scr_custom_gravity();

//Open
if (distance_to_object(obj_use) == 0 && opened == false && 
    image_blend != make_colour_hsv(0, 0, -1))
{
    if (instance_exists(obj_use))
    {
        with (obj_use) instance_destroy();
    }
	if (instance_exists(obj_player)) {
		obj_player.action_state = "looting";
	}
	image_index = 1;
    opened = true;
}
