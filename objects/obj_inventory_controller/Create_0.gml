///Initialize variables
//Read saved ini
key = "";
typeId = "";

pageUpdate = true;
createOnce = true; //Create objects once on the list
buffsUpdate = true;
listOfBuffs = false;

item_info_text = "Item info...";
//Filter
filter = "null";
//Coins
image_scale_coin = 0.70;
//Potion
image_scale_potion = 0.70;

//Toaster
draw_toast = false;
t = 1;
toaster = ds_list_create();
toast = "";
toast_y_pos = 0;
toast_alpha = 0;
toasterSpeed = 2;

//SKilltree
skill_name = "";
skill_bonus = "";
skill_price = "";
globalSkillPoints = global.skillPoints;
globalPrimaryAttributesValues = global.attributes;