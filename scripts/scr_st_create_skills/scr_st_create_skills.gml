//Create skills
/// TODO: Create skills
/*
if (pageUpdate == true) {
	var player = obj_player;
	globalPrimaryAttributesValues = global.attributes;
	global.skillPoints = 4;
	globalSkillPoints = global.skillPoints;
    if (createOnce == true) {		
        var viewX = camera_get_view_x(view_camera[0]);
		var viewY = camera_get_view_y(view_camera[0]);
		var hMargin = 10;
		/*var x_pos = 10;
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
        }*/
		/*var arrayLength = array_length_1d(globalPrimaryAttributesValues);
		var index = 0;
		for (var i = 0; i < arrayLength; i++) {
			instance_create(viewX+90,viewY+119+(hMargin*i),obj_button_count);
			(instance_nearest(viewX+90,viewY+119+(hMargin*i),obj_button_count)).action = "decrease";
			(instance_nearest(viewX+90,viewY+119+(hMargin*i),obj_button_count)).setHudState = HudStates.Skills;
			(instance_nearest(viewX+90,viewY+119+(hMargin*i),obj_button_count)).index = index;
			(instance_nearest(viewX+90,viewY+119+(hMargin*i),obj_button_count)).depth = depth-1;
			
			instance_create(viewX+102,viewY+119+(hMargin*i),obj_button_count);
			(instance_nearest(viewX+102,viewY+119+(hMargin*i),obj_button_count)).action = "increase";
			(instance_nearest(viewX+102,viewY+119+(hMargin*i),obj_button_count)).setHudState = HudStates.Skills;
			(instance_nearest(viewX+102,viewY+119+(hMargin*i),obj_button_count)).index = index;
			(instance_nearest(viewX+102,viewY+119+(hMargin*i),obj_button_count)).depth = depth-1;
			index++;
		}
		instance_create(viewX+54,viewY+118+(hMargin*(arrayLength)), obj_button_confirm);
		(instance_nearest(viewX+54,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).action = "cancel";
		(instance_nearest(viewX+54,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).setHudState = HudStates.Skills;
		(instance_nearest(viewX+54,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).depth = depth-1;
		
		instance_create(viewX+84,viewY+118+(hMargin*(arrayLength)), obj_button_confirm);
		(instance_nearest(viewX+84,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).action = "confirm";
		(instance_nearest(viewX+84,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).setHudState = HudStates.Skills;
		(instance_nearest(viewX+84,viewY+118+(hMargin*(arrayLength)), obj_button_confirm)).depth = depth-1;
        createOnce = false;
    }
	pageUpdate = false;
}
