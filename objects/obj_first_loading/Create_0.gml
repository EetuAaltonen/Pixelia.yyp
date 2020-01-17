//Global variables
load = false;

/*[GameTicks]*/
global.alarmTicks = scr_time_sec_to_alarm(1); //1 second

/*[Delta timer]*/
	global.delta = 60/1000000*delta_time;
/*[Clock]*/
	global.hours = -1;
	global.clockTimeSpeed = 48; //Game hour == 1.25min real time (24h == 30min)
/*[Darkness]*/
	global.darkness = 0;
/*[Layers / Depths]*/
	//layer_create(-100, "Collectable");
	
/*[Hud state & Room change]*/
    global.hudState = HudStates.Null;
	global.hudAction = HudActions.Null;

    global.room_change = 0;
	global.previousRoom = "null";
	global.playerHeading = 1;

/*[Current Room]*/
global.currentRoom = Village_1; //Prototype & Testing

/*[Enemies' stats]*/
    global.enemy_stats1 = 0;
    global.enemy_stats2 = 0;
    global.enemy_stats3 = 0;
	
//Global variables - Player

//REMEMBER TO ADD BUFFS (like global.armorRegenPlus) to scr_inventory_get_list_of_buffs!!
/*[Creatures]*/
	global.statusEffectTimer = 1;
/*[Player]*/
    //Can get damage
    global.damage = 1;
	//Total damage
	global.minDamage = 1;
	global.maxDamage = 10;
	//Critical damage (percent)
	global.criticalDamage = 0.1;
	global.criticalChance = 0.25;
	//Regeneration Cooldown
	global.regenCooldown = 50;
	global.drainCooldown = 5;
    //Health
    global.maxHealth = 100;
    global.healthPlus = 0;
    global.healthPoints = global.maxHealth;
    //Armor
    global.maxArmor = 129;
    global.armorPlus = 0;
    global.armor = 0;
    global.armorRegenAmount = 1; //1 points per second
	global.armorRegenPlus = 0; //+0%
    //Stamina
    global.maxStamina = 100;
	global.staminaPlus = 0;
    global.stamina = 1;//global.maxStamina;
    global.staminaRegenAmount = 5; //5 points per second
	global.staminaRegenPlus = 0; //+0%
    //Mana
    global.maxMana = 100;
	global.manaPlus = 0;
    global.mana = 1; //global.maxMana;
    global.manaRegenAmount = 5; //5 points per second
	global.manaRegenPlus = 1; //+100%
    //Movement
		//Walking
		global.maxWalkingSpeed = 1.0;//1.5;
		global.maxWalkingSpeedPlus = 0;
		global.slowingWalkingSpeed = 0; //Carrying - slow your walking
		//Running
		global.maxRunningSpeed = 2;//2.5;//2.8;//3.2;
		global.maxRunningSpeedPlus = 0;
		global.slowingRunningSpeed = 0;	//Carrying - slow your running
    //Level
    global.level = 1;
    global.xp = 0;
    global.xpLimit = 100;
	global.enchantingXp = 0;
    global.enchantingXpLimit = 100;
    //Skillpoint
    global.skillPoints = 0;
	global.enchantingPoints = 0;
	global.attributes = scr_glob_attributes();
	global.skills = scr_glob_skills();
	
    //Death counter
    global.death_counter = 0;
    //Kill counter
    global.kill_counter = 0;
    //Potion & Coins
    global.potions = 0;
    global.coins = 0;
	//Buffs
	global.buffs = ds_list_create();
    //NEEDED???
    global.auto_healing = 1;

/*[Crafting]*/
global.knownAlchemyRecipes = ds_list_create();
global.knownForgeRecipes = ds_list_create();
global.knownWorkbenchRecipes = ds_list_create();

//Global variables - Quest / Dialogs
global.quest = "Prototype 0.0.0.1";
global.dialogId = 0;

//Global variables - Pause
global.pause = 0;
global.pause_draw = 0;

//Global variables - Inventory
global.inventory = ds_list_create();
//Max & Total Inventory Capacity
global.maxInventoryCapacity = 100;
global.totalInventoryCapacity = 0;
global.carryingCapacityPlus = 0;

//Global variables - Equipment
/*equipments {
	helmet, 0
	amulet, 1
	armor, 2
	gloves, 3
	primary weapon, 4
	secondary weapon, 5
	ring, 6
	belt, 7
	boots 8
}*/
global.equipment = ["", "", "", "", "", "", "", "", ""]//ds_list_create();

//Global variables - Stash
global.stash = ds_list_create();

//Max & Total Stash Capacity
global.maxStashCapacity = 100;
global.totalStashCapacity = 0;
global.stashCapacityPlus = 0;

//HudActions as text
globalvar HudActionText;
HudActionText = scr_global_hud_action_texts();

// Global variables - Highlighting
global.highlightedObject = undefined;