//Global variables
load = false;

/*[Camera]*/
	view_camera[0] = camera_create();
/*[Delta timer]*/
	global.delta = 60/1000000*delta_time;
/*[Clock]*/
	global.hours = -1;
/*[Darkness]*/
	global.darkness = 0;
/*[Layers / Depths]*/
	//layer_create(-100, "Collectable");
	
/*[Hud state & Room change]*/
    global.hudState = "null";
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
    global.armorRegenAmount = 1;
	global.armorRegenPlus = 0; //skill NEEDED???
    global.armorRegenSpeed = 50;
    //Stamina
    global.maxStamina = 120;//10;
	global.staminaPlus = 0;
    global.stamina = global.maxStamina;
    global.staminaRegenAmount = 1;
	global.staminaRegenPlus = 0; //skill NEEDED???
    global.staminaRegenSpeed = 10;//50;
    //Mana
    global.maxMana = 100;//10;
	global.manaPlus = 0;
    global.mana = global.maxMana;
    global.manaRegenAmount = 1;
	global.manaRegenPlus = 0; //skill NEEDED???
    global.manaRegenSpeed = 10;//100;
    //Movement
		//Walking
		global.maxWalkingSpeed = 1.2;//1.5;
		global.maxWalkingSpeedPlus = 0;
		global.slowingWalkingSpeed = 0; //Carrying - slow your walking
		//Running
		global.maxRunningSpeed = 3.2;//2.8;//2.5;
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
	
	//Sell Rate
	global.sellRate = 0.1;
	
    //Death counter
    global.death_counter = 0;
    //Kill counter
    global.kill_counter = 0;
    //Potion & Coins
    global.potions = 0;
    global.coins = 0;
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

//Global variables - Equipments list
global.equipments = ds_list_create();

//Global variables - Stash
global.stash = ds_list_create();
//Max & Total Stash Capacity
global.maxStashCapacity = 100;
global.totalStashCapacity = 0;
global.stashCapacityPlus = 0;

//Global variables - Temp loot
global.tempLoot = ds_list_create();
