var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewWidth = camera_get_view_width(view_camera[0]);
var viewHeight = camera_get_view_height(view_camera[0]);

var wAspect = global.resWAspect;
var hAspect = global.resHAspect;

//Font
draw_set_font(fnt_draw_gui_inventory);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

if (global.hudState == "inventoryBackpack" ||
	global.hudState == "inventoryEquipments" ||
	scr_hud_state_some_of_crafting()) {
	
	scr_inventory_list_backpack();
} else if (global.hudState == "inventorySkills") {
    draw_text(viewX+30, viewY+120, "Coming Soon!");
	/*//Background
	draw_sprite(spr_st_primary_attributes_bg, 0, viewX+4, viewY+90);
    scr_st_draw_info();
    scr_st_create_skills();*/
} else if(global.hudState == "skills") {
	scr_skills_list_skills();
} else if(global.hudState == "stats") {
    /*//Background
    draw_sprite(spr_inventory_background, 0, viewX, viewY);
    //Icon
    draw_sprite(spr_death_counter, 0, viewX+30, viewY+120);
    //Death counter
    draw_text(viewX+50,viewY+112, string_hash_to_newline(string(global.death_counter)));
    //Icon
    draw_sprite(spr_kill_counter, 0, viewX+30, viewY+150);
    //Kill counter
    draw_text(viewX+50,viewY+143, string_hash_to_newline(string(global.kill_counter)));*/
    
    //Home village stats
    /*//Icon
    draw_sprite(spr_home_happiness, 0, viewX+230, viewY+120);
    //Happiness
    draw_text(viewX+250,viewY+112, string(global.home_happiness));
            
    //Icon
    draw_sprite(spr_home_defence, 0, viewX+230, viewY+150);
    //Defence
    draw_text(viewX+250,viewY+143, string(global.home_defence));
    
    //Icon
    draw_sprite(spr_home_hunger, 0, viewX+230, viewY+180);
    //Hunger
    draw_text(viewX+250,viewY+174, string(global.home_hunger));
    
    //Icon
    draw_sprite(spr_home_thirst, 0, viewX+230, viewY+210);
    //Thirst
    draw_text(viewX+250,viewY+205, string(global.home_thirst));*/
} else if (global.hudState == "shopBuy") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_shop_list_goods();
} else if (global.hudState == "shopSell") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_inventory_list_backpack();
} else if (global.hudState == "shopRepair") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	draw_text(viewX+30, viewY+120, "Coming Soon!");
	//scr_inventory_list_backpack();
} else if (global.hudState == "shopBuyBack") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	draw_text(viewX+30, viewY+120, "Coming Soon!");
	//scr_inventory_list_backpack();
} else if (global.hudState == "stashWithdraw") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	
	scr_stash_list_items();
} else if (global.hudState == "stashDeposit") {
	//Create Search Box
	if (!instance_exists(obj_search_box)) {
		instance_create(viewX+412, viewY+230, obj_search_box);
		filter = "";
		pageIndex = 1;
	}
	scr_inventory_list_backpack();
}