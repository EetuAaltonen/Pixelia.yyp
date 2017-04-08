//Create skills
if (pageUpdate == true)
{
    pageUpdate = false;
    if (createOnce == true)
    {
        var x_pos = 10;
        var margin_right = 32;
        var y_pos = 90;
        var margin_bottom = 35;
        for (i = 1; i <= 15; i++)
        {
            for (a = 1; a <= 4; a++)
            {
                instance_create(__view_get( e__VW.XView, 0 )+x_pos+(margin_right*(i-1)), __view_get( e__VW.YView, 0 )+y_pos+(margin_bottom*a), obj_skill_tree_skill);
                __view_set( e__VW.XView, 0, i );
                __view_set( e__VW.XView, 0, a );
                __view_set( e__VW.XView, 0, true );
            }
        }
        createOnce = false;
    }
}
