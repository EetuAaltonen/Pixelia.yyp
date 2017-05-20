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
    global.current_room = ini_read_real(global.save_file,"room",Test_improved);
    global.healthPoints = ini_read_real(global.save_file,"health",global.maxHealth);
    
    global.level = ini_read_real(global.save_file,"level",0);
    global.xp = ini_read_real(global.save_file,"xp",0);
    global.xp_limit = ini_read_real(global.save_file,"xplimit",0);
    
    global.skill_points = ini_read_real(global.save_file,"skill_points",0);
    global.death_counter = ini_read_real(global.save_file,"deaths",0);
    global.kill_counter = ini_read_real(global.save_file,"kills",0);

    global.quest = ini_read_string(global.save_file,"quest","Beginning");
    
    global.coins = ini_read_real(global.save_file,"coins",0);
    global.potions = ini_read_real(global.save_file,"potions",0);
    
    //= real(base64_decode(LoadedRoom));
    //= real(base64_decode(LoadedCoins));
    
    ini_close();
    room_goto(Test_improved);//Pixelia_Castle_1);//global.current_room);
}
else
{
    ini_open(global.save_file);
    ini_write_real(global.save_file,"room",Test_improved);
    ini_close();
    global.current_room = Test_improved//Test;
    room_goto(global.current_room);
}
