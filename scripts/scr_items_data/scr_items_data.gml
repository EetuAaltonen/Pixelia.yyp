//scr_item_info_struct()

return [
//  [sprite, name, description, type/shop, count, damage, speed, armor, durability, effect, effectAmount, effectDuration, weight, price, requiredLevel]
//	OLD [sprite, name, type/shop, count, durability, weight, price, effect, effectAmount, effectDuration, requiredLevel]	
	/*[Coin]*/
		[spr_coin,"Coin","","[]",1,"null","null","null","null","null","null","null",0,1,0],
	/*[Collectable]*/
		//Ores
		[spr_iron_ore,"Iron Ore","This is test description#to test if line breaks#are#OK","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_gold_ore,"Gold Ore","tempDescription","[forge,furnace,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_silver_ore,"Silver Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_ebony_ore,"Ebony Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_crimson_ore,"Crimson Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_adamite_ore,"Adamite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_fluellite_ore,"Fluellite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_pinalite_ore,"Pinalite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_troilite_ore,"Troilite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_pyrrhotite_ore,"Pyrrhotite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_cavansite_ore,"Canvasite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_zincite_ore,"Zincite Ore","tempDescription","[forge,blacksmith]",1,"null","null","null","null","null","null","null",1,5,0],
		//Logs
		[spr_oak_log,"Oak Log","tempDescription","[forge,workbench,carpenter]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_spruce_log,"Spruce Log","tempDescription","[forge,workbench,carpenter]",1,"null","null","null","null","null","null","null",1,5,0],
		[spr_birch_log,"Birch Log","tempDescription","[forge,workbench,carpenter]",1,"null","null","null","null","null","null","null",1,5,0],
	/*[Crafting]*/
		//Coal
		[spr_coal,"Coal","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.5,5,0],
		//Ingots
		[spr_iron_ingot,"Iron Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_steel_ingot,"Steel Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_silver_ingot,"Silver Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_gold_ingot,"Gold Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_bronze_ingot,"Bronze Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_ebony_ingot,"Ebony Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_crimson_ingot,"Crimson Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_adamite_ingot,"Adamite Ingot","This is test description#to test if line breaks#are#OK","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_fluellite_ingot,"Fluellite Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_pinalite_ingot,"Pinalite Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_troilite_ingot,"Troilite Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_pyrrhotite_ingot,"Pyrrhotite Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_zincite_ingot,"Zincite Ingot","tempDescription","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		[spr_cavansite_ingot,"Cavansite Ingot","This is test description#to test if line breaks#are#OK","[forge,workbench,blacksmith]",1,"null","null","null","null","null","null","null",0.3,5,0],
		//Bow Model
		[spr_bow_model,"Bow Model","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.3,5,0],
		//String
		[spr_string,"String","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.01,5,0],
		//Rope
		[spr_rope,"Rope","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		//Fabric
		[spr_fabric,"Fabric","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		//Stick
		[spr_wooden_stick,"Wooden Stick","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		//Jewellery
		[spr_amulet_mould,"Amulet Mould","tempDescription","[furnace,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		[spr_ring_mould,"Ring Mould","tempDescription","[furnace,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		[spr_gold_ring,"Gold Ring","tempDescription","[general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		[spr_gold_amulet,"Gold Amulet","tempDescription","[general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Alchemy]*/
		[spr_empty_flask,"Empty Flask","tempDescription","[waterWell,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
		[spr_water_flask,"Flask Of Water","tempDescription","[alchemy,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Equipment]*/
		//Helmets
		[spr_broken_helmet,"Broken Helmet","tempDescription","[equipment,helmet,armorer]",1,"null","null",10,100,"null","null","null",0.1,5,0],
		[spr_knight_helmet,"Knight Helmet","tempDescription","[equipment,helmet,armorer]",1,"null","null",30,100,"null","null","null",0.1,5,0],
		//Shields
		[spr_wooden_shield,"Wooden Shield","tempDescription","[equipment,secweapon,armorer]",1,"null","null",10,100,"null","null","null",0.1,5,0],
		[spr_knight_shield,"Knight Shield","tempDescription","[equipment,secweapon,armorer]",1,"null","null",30,100,"antibleed","null","null",0.1,5,0],
		//Boots
		[spr_leather_boots,"Leather Boots","tempDescription","[equipment,boots,armorer]",1,"null","null",10,100,"speed","null",-1,0.1,5,1],
		//Rings
		[spr_silver_ring,"Silver Ring","tempDescription","[equipment,ring,armorer]",1,"null","null",10,100,"slow","null",-1,0.1,5,0],
	/*[Weapons]*/
		/*[Bow]*/
		[spr_bow,"Bow","tempDescription","[equipment,priweapon,armorer]",1,5,2,"null",100,"null","null","null",0.1,5,0],
		/*[Arrow]*/
		[spr_arrow_pouch,"Arrow","tempDescription","[equipment,secweapon,armorer]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Tools]*/
	[spr_tool_saw,"Saw","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_tool_knife,"Knife","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_crucible_with_handle,"Crucible With Handle","tempDescription",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Creatures]*/
	[spr_bones,"Bones","tempDescription","[general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Animals]*/
	[spr_raw_meat,"Raw Meat","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_cooked_meat,"Cooked Meat","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_leather,"Leather","tempDescription","[workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_wool,"Wool","tempDescription","[cooking,workbench,spinningWheel,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_feather,"Feather","tempDescription","[cooking,workbench,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Fishes]*/
	[spr_raw_salmon,"Raw Salmon","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.6,5,0],
	[spr_raw_tuna,"Raw Tuna","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.4,5,0],
	/*[Cooking]*/
	[spr_flour,"Flour","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_milk,"Milk","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	[spr_egg,"Egg","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Food]*/
	[spr_cake,"Cake","tempDescription","[cooking,general]",1,"null","null","null","null","null","null","null",0.1,5,0],
	/*[Potions]*/
	[spr_water_flask,"Poison","tempDescription","[potion,alchemy,general]",1,"null","null","null","null","poison",5,30,0.1,5,0],
	[spr_water_flask,"Antipoison","tempDescription","[potion,alchemy,general]",1,"null","null","null","null","antipoison","null",15,0.1,5,0],
];