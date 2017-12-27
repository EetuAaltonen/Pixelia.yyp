///Initialize variables
//Read saved ini
key = "";
typeId = "";

//Inventory
updateValues = true;
listOfItems = ds_list_create();

//Shop
listOfshop = "null";
merchant = "null";

names = [];
count = [];
weight = [];
price = [];

pageIndex = 1;
maxPageIndex = 1;
itemsPerPage = 8;
currentPage = 1;
startIndex = 0;
lastItem = 0;

pageUpdate = true;
createOnce = true; //Create objects once on the list
buffsUpdate = true;
listOfBuffs = false;

defaultInfoText = "Item info..."; 
item_info_text = defaultInfoText;
itemInfoText = defaultInfoText;
//Filter
filter = "";

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