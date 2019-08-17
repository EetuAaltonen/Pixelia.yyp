//Reset Transition Animation To Default
obj_screen_controller.viewAlpha = 1;

if (file_exists("Inventory.ini")) {
	ini_open("Inventory.ini");
	//Inventory
	var data = ini_read_string(global.save_file, "Inventory", "");
	if (data != "") {
		ds_list_read(global.inventory, data);
	}
	//Equipment
	data = ini_read_string(global.save_file, "Equipment", "");
	if (data != "") {
		var equipments = ds_list_create();
		ds_list_read(equipments, data);
		var listSize = ds_list_size(equipments);
		var item;
		var i;
		if (listSize == array_length_1d(global.equipments)) {
			for (i = 0; i < listSize; i++) {
				item = ds_list_find_value(equipments, i);
				if (item != "") {
					global.equipments[i] = item;
				}
			}
		}
	}
	//Stash
	data = ini_read_string(global.save_file, "Stash", "");
	if (data != "") {
		ds_list_read(global.stash, data);
	}
	ini_close();
	scr_loadgame_check_items_data();
}

if (file_exists(global.save_file)) {
    ini_open(global.save_file);
	
    global.currentRoom = ini_read_real(global.save_file,"room",global.currentRoom);
    global.healthPoints = ini_read_real(global.save_file,"health",global.maxHealth);
    
    global.level = ini_read_real(global.save_file,"level",global.level);
    global.xp = ini_read_real(global.save_file,"xp",global.xp);
    global.xpLimit = ini_read_real(global.save_file,"xpLimit",global.xpLimit);
	global.enchantingXp = ini_read_real(global.save_file,"enchantigXp",global.enchantingXp);
    global.enchantingXpLimit = ini_read_real(global.save_file,"enchantigXpLimit",global.enchantingXpLimit);
    
    global.skillPoints = ini_read_real(global.save_file,"skillPoints",0);
	//Skills
	data = ini_read_string(global.save_file, "Skills", "");
	if (data != "") {
		var skills = ds_list_create();
		ds_list_read(skills, data);
		var listSize = ds_list_size(skills);
		var skillCount = array_length_1d(global.skills);
		var skill, tempSkill;
		var i, j;
		for (i = 0; i < listSize; i++) {
			skill = ds_list_find_value(skills, i);
			if (skill != "") {
				for (j = 0; j < skillCount; j++) {
					tempSkill = global.skills[j];
					if (skill[0] == tempSkill[0]) {
						global.skills[j] = skill;
						break;
					}
				}
			}
		}
	}
    global.death_counter = ini_read_real(global.save_file,"deaths",0);
    global.kill_counter = ini_read_real(global.save_file,"kills",0);

    global.quest = ini_read_string(global.save_file,"quest",global.quest);
    
    global.coins = ini_read_real(global.save_file,"coins",0);
    global.potions = ini_read_real(global.save_file,"potions",0);
	
	//Buffs
	var data = ini_read_string(global.save_file, "buffs", "");
	if (data != "") {
		ds_list_read(global.buffs, data);
	}
	
	//Inventory Capacity
	global.maxInventoryCapacity = ini_read_real(global.save_file,"maxInventoryCapacity",global.maxInventoryCapacity);
	global.totalInventoryCapacity = ini_read_real(global.save_file,"totalInventoryCapacity",global.totalInventoryCapacity);
	global.carryingCapacityPlus = ini_read_real(global.save_file,"carryingCapacityPlus",global.carryingCapacityPlus);
	
	//Stash Capacity
	global.maxStashCapacity = ini_read_real(global.save_file,"maxStashCapacity",global.maxStashCapacity);
	global.totalStashCapacity = ini_read_real(global.save_file,"totalStashCapacity",global.totalStashCapacity);
	global.stashCapacityPlus = ini_read_real(global.save_file,"stashCapacityPlus",global.stashCapacityPlus);
	
	var clock = obj_global_clock;
	clock.milliseconds = ini_read_real(global.save_file, "clockMilliSec", 0);
	clock.seconds = ini_read_real(global.save_file, "clockSeconds", 0);
	clock.minutes = ini_read_real(global.save_file, "clockMinutes", 0);
	clock.hours = ini_read_real(global.save_file, "clockHours", 8);
	clock.days = ini_read_real(global.save_file, "clockDays", 1);
	clock.months = ini_read_real(global.save_file, "clockMonths", 1);
	clock.years = ini_read_real(global.save_file, "clockYears", 1);
	
	var inGameTime = ini_read_string(global.save_file, "inGameTime", "0001-01-01-08-00-00");
	inGameTime = scr_time_from_string(inGameTime);
	clock.gYears = inGameTime[0];
	clock.gMonths = inGameTime[1];
	clock.gDays = inGameTime[2];
	clock.gHours = inGameTime[3];
	clock.gMinutes = inGameTime[4];
	clock.gSeconds = inGameTime[5];
    
    //= real(base64_decode(LoadedRoom));
    //= real(base64_decode(LoadedCoins));
    
    ini_close();
	room_goto(global.currentRoom);
} else {
    ini_open(global.save_file);
    ini_write_real(global.save_file,"room",global.currentRoom);
    ini_close();
	
    room_goto(global.currentRoom);
}
