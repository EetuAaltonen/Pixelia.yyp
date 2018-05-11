//Source Respawn Times
scr_source_save_respawn_times();

ini_open("Inventory.ini");

//Inventory
var data = ds_list_write(global.inventory);
ini_write_string(global.save_file, "Inventory", data);
//Equipments
var equipments = ds_list_create();
var listSize = array_length_1d(global.equipments);
var i;
for (i = 0; i < listSize; i++) {
	ds_list_add(equipments, global.equipments[i]);
}
data = ds_list_write(equipments);
ini_write_string(global.save_file, "Equipments", data);
//Stash
data = ds_list_write(global.stash);
ini_write_string(global.save_file, "Stash", data);

ini_close();



ini_open(global.save_file);

//Datetime
var Datetime = (string(current_day) + "/" + string (current_month) + "/" + string(current_year) + "  " + string(current_hour));
var minutes;
if (string_length(string(current_minute)) < 2) {
    minutes = ("0" + string(current_minute));
} else {
    minutes = string(current_minute);
}
var seconds;
if (string_length(string(current_second)) < 2) {
    seconds = ("0" + string(current_second));
} else {
    seconds = string(current_second);
}
Datetime += (":" + minutes + ":" + seconds);

ini_write_string(global.save_file,"game_version", global.gameVersion);

ini_write_string(global.save_file,"last_played", Datetime);
            
ini_write_real(global.save_file,"room",global.currentRoom);
ini_write_real(global.save_file,"health",global.healthPoints);

ini_write_real(global.save_file,"level",global.level);
ini_write_real(global.save_file,"xp",global.xp);
ini_write_real(global.save_file,"xpLimit",global.xpLimit);
ini_write_real(global.save_file,"enchantigXp",global.xp);
ini_write_real(global.save_file,"enchantigXpLimit",global.xpLimit);

ini_write_real(global.save_file,"skillPoints",global.skillPoints);

//Skills
var skills = ds_list_create();
var listSize = array_length_1d(global.skills);
var i;
for (i = 0; i < listSize; i++) {
	ds_list_add(skills, global.skills[i]);
}
data = ds_list_write(skills);
ini_write_string(global.save_file, "Skills", data);

ini_write_real(global.save_file,"deaths",global.death_counter);
ini_write_real(global.save_file,"kills",global.kill_counter);

ini_write_string(global.save_file,"quest",global.quest);

ini_write_real(global.save_file,"coins",global.coins);
ini_write_real(global.save_file,"potions",global.potions);

//Inventory Capacity
ini_write_real(global.save_file,"maxInventoryCapacity",global.maxInventoryCapacity);
ini_write_real(global.save_file,"totalInventoryCapacity",global.totalInventoryCapacity);
ini_write_real(global.save_file,"carryingCapacityPlus",global.carryingCapacityPlus);
	
//Stash Capacity
ini_write_real(global.save_file,"maxStashCapacity",global.maxStashCapacity);
ini_write_real(global.save_file,"totalStashCapacity",global.totalStashCapacity);
ini_write_real(global.save_file,"stashCapacityPlus",global.stashCapacityPlus);

var clock = obj_global_clock;
ini_write_real(global.save_file, "clockMilliSec", clock.milliseconds);
ini_write_real(global.save_file, "clockSeconds", clock.seconds);
ini_write_real(global.save_file, "clockMinutes", clock.minutes);
ini_write_real(global.save_file, "clockHours", clock.hours);
ini_write_real(global.save_file, "clockDays", clock.days);
ini_write_real(global.save_file, "clockMonths", clock.months);
ini_write_real(global.save_file, "clockYears", clock.years);

var inGameTime = scr_time_to_string(clock.gYears,clock.gMonths,clock.gDays,clock.gHours,clock.gMinutes,clock.gSeconds);
ini_write_string(global.save_file, "inGameTime", inGameTime);

ini_close();
