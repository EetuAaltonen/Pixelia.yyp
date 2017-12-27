if (file_exists(global.save_file))
{
    var fileName = "Inventory.ini";
    if (file_exists(fileName)) {
        ini_open(fileName);
        if (ini_section_exists(global.save_file)) {
            for (i = 0; i >= 0; i++) {
                var items = ds_list_create();
                var values = ini_read_string(global.save_file, string(i), "");
                if (values == "") {
                    break;
                }
                ds_list_read(items, values);
                ds_list_add(global.inventory, items);
            }
            global.total_item_weight = ini_read_real(global.save_file,"weight_of_items",0);
        }
        ini_close();
    }
    ini_open(global.save_file);
	global.timerSeconds = ini_read_real(global.save_file,"timerSeconds",0);
	global.timerMinutes = ini_read_real(global.save_file,"timerMinutes",0);
	global.timerHours = ini_read_real(global.save_file,"timerHours",0);
	
    global.currentRoom = ini_read_real(global.save_file,"room",Village_1/*Test_improved*/);
    global.healthPoints = ini_read_real(global.save_file,"health",global.maxHealth);
    
    global.level = ini_read_real(global.save_file,"level",0);
    global.xp = ini_read_real(global.save_file,"xp",0);
    global.xpLimit = ini_read_real(global.save_file,"xpLimit",0);
	global.enchantigXp = ini_read_real(global.save_file,"enchantigXp",0);
    global.enchantigXpLimit = ini_read_real(global.save_file,"enchantigXpLimit",0);
    
    global.skillPoints = ini_read_real(global.save_file,"skillPoints",0);
    global.death_counter = ini_read_real(global.save_file,"deaths",0);
    global.kill_counter = ini_read_real(global.save_file,"kills",0);

    global.quest = ini_read_string(global.save_file,"quest","Beginning");
    
    global.coins = ini_read_real(global.save_file,"coins",0);
    global.potions = ini_read_real(global.save_file,"potions",0);
    
    //= real(base64_decode(LoadedRoom));
    //= real(base64_decode(LoadedCoins));
    
    ini_close();
    room_goto(Village_1);
	//room_goto(global.currentRoom/*Test_improved*/);
} else {
    ini_open(global.save_file);
    ini_write_real(global.save_file,"room",Village_1);
    ini_close();
    global.currenRoom = Village_1//Test;
	
	//Set Transition Animation To Default
	obj_screen_controller.viewAlpha = 1;
	
    room_goto(global.current_room);
	//room_goto(global.current_room);
}
