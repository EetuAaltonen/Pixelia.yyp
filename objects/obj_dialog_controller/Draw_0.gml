///Draw dialog
//Font
draw_set_font(fnt_dialog);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == "dialog") {
	var Ypos = 265;
	var YposPlus = 18;
	var viewX = camera_get_view_x(view_camera[0]);
	var viewY = camera_get_view_y(view_camera[0]);
	var arrayLength = array_length_1d(dialogs);
	//Background
	draw_sprite_ext(spr_dialog_background, 0, viewX, viewY+Ypos+4, 1, -(YposPlus*(arrayLength/2)+20), 0, 0, 0.8); //arrayLength/2 because actions are included to array for execute
	//Options
	if (dialogs != false) {
		draw_text(viewX+5, viewY+Ypos-(YposPlus*(arrayLength/2-1)+20), dialogs[0]);
		var index = arrayLength-1;
		var margin = 1;
		for (var i = 1; i < arrayLength; i++) {
			if (createOptions) {
				if (is_string(dialogs[index])) {
					instance_create(viewX+5, viewY+Ypos-(YposPlus*(margin-1)+10), obj_dialog_option);
					(instance_nearest(viewX+5, viewY+Ypos-(YposPlus*(margin-1)+10), obj_dialog_option)).optionText = dialogs[index];
					(instance_nearest(viewX+5, viewY+Ypos-(YposPlus*(margin-1)+10), obj_dialog_option)).optionAction = dialogs[index+1];
					margin += 1;
				}
			}
			index -= 1;
		}
		if (createOptions) {
			createOptions = false;
		}
	}
}

/*scr_dialog_blacksmith();

if (global.hudState == "dialog")
{
    if (dialogOptions == "null")
    {
        //scr_dialog_blacksmith();
        var X, Y, option;
        X = view_xview+10;
        var key;
        dialogQuestion = Question[global.dialogId];
        dialogOptions = 0;
        bgHeight = bgHeightOriginal;
        for (i = 0; i >= 0; i++)
        {
            if (i < array_length_1d(Option))
            {
                //scr_dialog_blacksmith();
                Y = view_yview+300+(-42+(-14*i));
                if (string_length(Option[i]) > 0)
                {
                    option = Option[i];
                    instance_create(X,Y,obj_dialog_option);
                    instance_nearest(X,Y,obj_dialog_option).option = option;
                    dialogOptions += 1;
                }
                else
                {
                    if (dialogOptions == 0)
                    {
                        option = "Farewell";
                        instance_create(X,Y,obj_dialog_option);
                        var leave = instance_nearest(X,Y,obj_dialog_option).optionLeave;
                        instance_nearest(X,Y,obj_dialog_option).option = leave;
                    }
                    break;
                }
            }
            else
            {
                if (dialogOptions == 0)
                {
                    option = "Farewell";
                    instance_create(X,Y,obj_dialog_option);
                    var leave = instance_nearest(X,Y,obj_dialog_option).optionLeave;
                    instance_nearest(X,Y,obj_dialog_option).option = leave;
                }
                break;
            }
        }
        if (dialogOptions > 0)
        {
            bgHeight = (bgHeightOriginal*dialogOptions);
        }
    }
    //Dialog background
    draw_sprite_ext(spr_dialog_background, image_index, view_xview, view_yview+(300-30),
                    image_xscale, bgHeight, image_angle, c_black, 0.8);
    //Text halign right
    draw_set_halign(fa_right);
    //Dialog question
    draw_text(view_xview+490, view_yview+(300-30+bgHeight+10),dialogQuestion);
    
    
    
    //draw_text(view_xview+10,view_yview+(300-30+bgHeight+10), dialogText);
    //Background
    draw_sprite_ext(spr_dialog_background, image_index, view_xview,view_yview+215,
                    image_xscale, image_yscale, image_angle, c_white, 0.5);
    var dialog_check;
    dialog_check = global.dialog_check1;
    draw_text(view_xview+445,view_yview+225, string(dialog_check))
    
    var dialog_check2;
    dialog_check2 = global.dialog_check2;
    draw_text(view_xview+464,view_yview+225, string(dialog_check2))
    
    draw_text(view_xview+457,view_yview+225, string("/"))
     
    draw_text(view_xview+30, view_yview+225, string_copy(text, 1, t));
    
    if (t <= string_length(text)) //Smooth writing
    {
        t++;
    }
    
    if (global.dialog_text > global.dialog_min)
    {
        draw_sprite(spr_dialog_A, 0, view_xview+10, view_yview+250); 
    }
    else if (global.dialog_text <= global.dialog_min)
    {
        draw_sprite(spr_dialog_A, 1, view_xview+10, view_yview+250); 
    }
    if (global.dialog_text < global.dialog_max)
    {
        draw_sprite(spr_dialog_D, 0, view_xview+490, view_yview+250);  
    }
    else if (global.dialog_text >= global.dialog_max)
    {
        draw_sprite(spr_dialog_D, 1, view_xview+490, view_yview+250); 
    }
}