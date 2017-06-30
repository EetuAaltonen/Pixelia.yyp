//Global variables
load = false;

/*[Camera]*/
	view_camera[0] = camera_create();
/*[Layers / Depths]*/
	//layer_create(-100, "Collectable");
	
/*[Hud state & Room change]*/
    global.hudState = "null";
    global.room_change = 0;

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
    //Health
    global.maxHealth = 3;
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
    global.maxStamina = 10;
	global.staminaPlus = 0;
    global.stamina = 0;//global.maxStamina;
    global.staminaRegenAmount = 1;
	global.staminaRegenPlus = 0; //skill NEEDED???
    global.staminaRegenSpeed = 50;
    //Mana
    global.maxMana = 10;
	global.manaPlus = 0;
    global.mana = 0;//global.maxMana;
    global.manaRegenAmount = 1;
	global.manaRegenPlus = 0; //skill NEEDED???
    global.manaRegenSpeed = 100;
    //Movement
		//Walking
		global.maxWalkingSpeed = 1.5;
		global.maxWalkingSpeedPlus = 0;
		global.slowingWalkingSpeed = 0; //Carrying - slow your walking
		//Running
		global.maxRunningSpeed = 2.5;
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
    //Death counter
    global.death_counter = 0;
    //Kill counter
    global.kill_counter = 0;
    //Potion & Coins
    global.potions = 0;
    global.coins = 0;
    //NEEDED???
    global.auto_healing = 1;
    //Max & Total item weight
    global.max_item_weight = 10;
	global.carryingCapacityPlus = 0;
    global.total_item_weight = 0;

/*[Crafting]*/
global.knownAlchemyRecipes = ds_list_create();
global.knownForgeRecipes = ds_list_create();
global.knownWorkbenchRecipes = ds_list_create();

//Global variables - Quest / Dialogs
global.quest = "Beginning";
global.dialogId = 0;

//Global variables - Pause
global.pause = 0;
global.pause_draw = 0;

//Global variables - Inventory
global.inventory = ds_list_create();

//Global variables - Equipments list
global.equipments = ds_list_create();

//Global variables - Temp loot
global.tempLoot = ds_list_create();
