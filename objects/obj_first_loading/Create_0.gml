///Global variables
load = false;

/*[Hud state & Room change]*/
    global.hudState = "null";
    global.room_change = 0;

/*[Enemies' stats]*/
    global.enemy_stats1 = 0;
    global.enemy_stats2 = 0;
    global.enemy_stats3 = 0;

///Global variables - Player

/*[Player]*/
    //Can get damage
    global.damage = 1;
    //Health
    global.maxHealth = 10;
    global.healthPlus = 0;
    global.health = 10;
    //Armor
    global.maxArmor = 129;
    global.armorPlus = 0;
    global.armor = 0;
    global.armorRegenAmount = 1;
    global.armorRegenSpeed = 50;
    global.armorRegenPlus = 0; //skill NEEDED???
    //Stamina
    global.staminaPlus = 0; //Max = 10
    global.stamina = (10 + global.staminaPlus);
    global.staminaRegenAmount = 1;
    global.staminaRegenSpeed = 50;
    global.staminaRegenPlus = 0; //skill NEEDED???
    //Mana
    global.manaPlus = 0; //Max = 10
    global.mana = (10 + global.staminaPlus);
    global.manaRegenAmount = 1;
    global.manaRegenSpeed = 100;
    global.manaRegenPlus = 0; //skill NEEDED???
    //Movement
    global.movementSpeed = 0; //Carrying - slow your movement
    global.load = 0;
    //Level
    global.level = 1;
    global.xp = 0;
    global.xp_limit = 100;
    //Skillpoint
    global.skill_points = 0;
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
    global.total_item_weight = 0;

///Global variables - Crafting

/*[Forge]*/
    //Highlights off
    global.forg_slot_1 = false;
    global.forg_slot_2 = false;
    global.forg_slot_3 = false;
    global.forg_slot_4 = false;
    
/*[Alchemy]*/
    //Highlights off
    global.alch_slot_1 = false;
    global.alch_slot_2 = false;
    global.alch_slot_3 = false;
    global.alch_slot_4 = false;

/*[Workbench]*/
    //Highlights off
    global.work_slot_1 = false;
    global.work_slot_2 = false;
    global.work_slot_3 = false;
    global.work_slot_4 = false;

///Global variables - Quest / Dialogs
global.quest = "Beginning";
global.dialogId = 0;

///Global variables - Pause
global.pause = 0;
global.pause_draw = 0;

///Global variables - Inventory
global.inventory = ds_list_create();

///Global variables - Equipments list
global.equipments = ds_list_create();
