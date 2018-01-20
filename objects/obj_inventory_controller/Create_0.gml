///Initialize variables
//Read saved ini
key = "";
typeId = "";

//Inventory
updateValues = true;
listOfItems = ds_list_create();

pageIndex = 1;
maxPageIndex = 1;
itemsPerPage = 8;
startIndex = 0;
lastItem = 0;

//List Item Info
names = [];
count = [];
weight = [];
price = [];

//Shop
listOfshop = "null";
merchant = "null";

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

//SKilltree
skill_name = "";
skill_bonus = "";
skill_price = "";
globalSkillPoints = global.skillPoints;
globalPrimaryAttributesValues = global.attributes;