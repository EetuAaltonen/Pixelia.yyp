//Create skills
if (pageUpdate == true)
{
    pageUpdate = false;
    if (createOnce == true)
    {
        var viewX = camera_get_view_x(view_camera[0]);
		var viewY = camera_get_view_y(view_camera[0]);
		var x_pos = 10;
        var margin_right = 32;
        var y_pos = 90;
        var margin_bottom = 35;
        for (i = 1; i <= 15; i++)
        {
            for (a = 1; a <= 4; a++)
            {
                instance_create(viewX+x_pos+(margin_right*(i-1)), viewY+y_pos+(margin_bottom*a), obj_skill_tree_skill);
                (instance_nearest(viewX+x_pos+(margin_right*(i-1)),viewY+y_pos+(margin_bottom*a), obj_skill_tree_skill)).id_x = i;
				(instance_nearest(viewX+x_pos+(margin_right*(i-1)),viewY+y_pos+(margin_bottom*a), obj_skill_tree_skill)).id_y = a;
				(instance_nearest(viewX+x_pos+(margin_right*(i-1)),viewY+y_pos+(margin_bottom*a), obj_skill_tree_skill)).get_attributes = true;
            }
        }
        createOnce = false;
    }
}
