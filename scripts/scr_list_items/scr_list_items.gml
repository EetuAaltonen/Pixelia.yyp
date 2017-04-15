var Ypos;
var YposPlus = 19;
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var createOnce = false;
var createItems;
var info = "";
if (pageUpdate == true)
{
    Ypos = 120;
    item_count = 0;
    //Clear item info
    item_info_text = "Item info...";
    //Create search text box in inventory
    if (global.hudState == "inventory1" || string_pos("Equipments", string(global.hudState)))
    {
        instance_create(viewX+412, viewY+230, obj_menu_text_box);
    }
    if (instance_exists(obj_listed_item))
    {
		with (obj_listed_item) instance_destroy();
    }
    var listSize = ds_list_size(global.inventory);
    if (listSize > 0) {
		var createItems = ds_list_create();
        for (var a = 0; a < listSize; a++) {
            info = ds_list_find_value(global.inventory, a);
            //Create items
            if (string_pos(global.hudState, ds_list_find_value(info, 4))) {
				ds_list_add(createItems, info);
                Name[item_count] = ds_list_find_value(info, 1);
                Count[item_count] = ds_list_find_value(info, 2);
                Weight[item_count] = string_format((ds_list_find_value(info, 2) * ds_list_find_value(info, 3)), 0, 2);
                item_count += 1;
            }
        }
		createOnce = true;
    }
    //Calculate number of pages
    scr_page_calculate();
    pageUpdate = false;
}
//Background
draw_sprite(spr_inventory_background, 0, viewX, viewY);
if (item_count > 0)
{
    Ypos = 120;
	if (createOnce) {
		var Ypos_ = Ypos;
		//Create items
		for (var a = start_count; a != end_count; a++) {
			info = ds_list_find_value(createItems, a);
            instance_create(viewX+30, viewY+Ypos_, obj_listed_item);
            (instance_nearest(viewX+30, viewY+Ypos_, obj_listed_item)).sprite_index = asset_get_index(string(ds_list_find_value(info, 0)));
            (instance_nearest(viewX+30, viewY+Ypos_, obj_listed_item)).itemCount = ds_list_find_value(info, 2);
			(instance_nearest(viewX+30, viewY+Ypos_, obj_listed_item)).checkEquipped = ds_list_find_value(info, 2);
			Ypos_ += YposPlus;
		}
		createOnce = false;
	}
    for (var i = start_count; i != end_count; i++) {
        //Item background
        draw_sprite(spr_inv_item_bg, 0,viewX+30, viewY+Ypos);        
        //Item description background
        draw_sprite(spr_inv_item_description_bg, 0,viewX+120, viewY+Ypos);
        //Item description
        draw_text(viewX+56,viewY+Ypos, Name[i]);
        if (global.hudState == "shop")
        {
            /*//Item price background
            draw_sprite(spr_inv_item_amount_bg, 0,view_xview+228, viewY+Ypos);
            //Item price
            draw_text(view_xview+207,viewY+Ypos, string(item_price_draw[i]) + "  G");*/
        }
        else
        {
			if (!string_pos("Equipments", string(global.hudState))) {
	            //Item amount background
	            draw_sprite(spr_inv_item_amount_bg, 0,viewX+228, viewY+Ypos);
	            //Item amount
	            draw_text(viewX+207,viewY+Ypos, string(Count[i]) + "  x");
			}
        }
        if (string_pos("inventory", string(global.hudState)) &&
            !string_pos("Equipments", string(global.hudState)) ||
            global.hudState == "shop")
        {
            //Item weight background
            draw_sprite(spr_inv_item_amount_bg, 0,viewX+295, viewY+Ypos);
            //Item weight
            draw_text(viewX+274,viewY+Ypos, Weight[i] + "  Pw");
        }
        Ypos += YposPlus;
    }
    createOnce = false;
} else {
    //If empty
    draw_text(viewX+30, viewY+120, "Inventory is empty...");
}
//Page number background
draw_sprite(spr_inv_item_description_bg, 0,viewX+87, viewY+95);
//Page number max
page_max = (round(item_count/8));
if ((page_max - (item_count/8)) < 0 )
{   
    page_max += 1;
}
//Draw page number and max
if (page_max == 0)
{
    page_max = 1;
}
draw_text(viewX+22,viewY+95, string("PAGE:    " + string(current_page + 1) + "  /  " + string(page_max)));
if (global.hudState == "inventory1" ||
	string_pos("Equipments", string(global.hudState)) ||
    global.hudState = "shop")
{
    //Total and weight background
    draw_sprite(spr_inv_item_description_bg, 0,viewX+255, viewY+95);
    //Total and weight
    
	draw_text(viewX+190,viewY+95, "Capacity:  " + string_format(global.total_item_weight, 0, 2) + "  /  " + string(global.max_item_weight + global.carryingCapacityPlus) + "  Pw");
	//Vertical align
	draw_set_valign(fa_top);
	//Item info background
	draw_sprite(spr_inv_item_info_bg, 0,viewX+334, viewY+85);
	//Item info text
	draw_text(viewX+344, viewY+90, item_info_text);
	//Restore vertical align
	draw_set_valign(fa_middle);
}
