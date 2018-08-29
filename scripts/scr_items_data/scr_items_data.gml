/*Item {
	sprite; 0
	name; 1
	type/shop; 2
	count; 3
	durability; 4
	weight; 5
	price; 6
	effect; 7
	effectAmount; 8
	requiredLevel; 9
}*/

return [
//  [sprite, name, type/shop, count, durability, weight, price, effect, effectAmount]
	/*[Collectable]*/
		//Ores
		[spr_iron_ore,"Iron Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_gold_ore,"Gold Ore","[forge,furnace,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_silver_ore,"Silver Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_ebony_ore,"Ebony Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_crimson_ore,"Crimson Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_adamite_ore,"Adamite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_fluellite_ore,"Fluellite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_pinalite_ore,"Pinalite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_troilite_ore,"Troilite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_pyrrhotite_ore,"Pyrrhotite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_cavansite_ore,"Canvasite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		[spr_zincite_ore,"Zincite Ore","[forge,blacksmith]",1,"null",1,5,"null","null",0],
		//Logs
		[spr_oak_log,"Oak Log","[forge,workbench,carpenter]",1,"null",1,5,"null","null",0],
		[spr_spruce_log,"Spruce Log","[forge,workbench,carpenter]",1,"null",1,5,"null","null",0],
		[spr_birch_log,"Birch Log","[forge,workbench,carpenter]",1,"null",1,5,"null","null",0],
	/*[Crafting]*/
		//Coal
		[spr_coal,"Coal","[forge,workbench,blacksmith]",1,"null",0.5,5,"null","null",0],
		//Ingots
		[spr_iron_ingot,"Iron Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_steel_ingot,"Steel Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_silver_ingot,"Silver Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_gold_ingot,"Gold Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_bronze_ingot,"Bronze Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_ebony_ingot,"Ebony Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_crimson_ingot,"Crimson Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_adamite_ingot,"Adamite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_fluellite_ingot,"Fluellite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_pinalite_ingot,"Pinalite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_troilite_ingot,"Troilite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_pyrrhotite_ingot,"Pyrrhotite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_zincite_ingot,"Zincite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		[spr_cavansite_ingot,"Cavansite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,5,"null","null",0],
		//Bow Model
		[spr_bow_model,"Bow Model","[workbench,general]",1,"null",0.3,5,"null","null",0],
		//String
		[spr_string,"String","[workbench,general]",1,"null",0.01,5,"null","null",0],
		//Rope
		[spr_rope,"Rope","[workbench,general]",1,"null",0.1,5,"null","null",0],
		//Fabric
		[spr_fabric,"Fabric","[workbench,general]",1,"null",0.1,5,"null","null",0],
		//Stick
		[spr_wooden_stick,"Wooden Stick","[workbench,general]",1,"null",0.01,5,"null","null",0],
		//Jewellery
		[spr_amulet_mould,"Amulet Mould","[furnace,general]",1,"null",0.01,5,"null","null",0],
		[spr_ring_mould,"Ring Mould","[furnace,general]",1,"null",0.01,5,"null","null",0],
		[spr_gold_ring,"Gold Ring","[general]",1,"null",0.01,5,"null","null",0],
		[spr_gold_amulet,"Gold Amulet","[general]",1,"null",0.01,5,"null","null",0],
	/*[Alchemy]*/
		[spr_empty_flask,"Empty Flask","[waterWell,general]",1,"null",0.05,5,"null","null",0],
		[spr_water_flask,"Flask Of Water","[alchemy,general]",1,"null",0.1,5,"null","null",0],
	/*[Equipments]*/
		//Helmets
		[spr_broken_helmet,"Broken Helmet","[equipment,helmet,armorer]",1,"null",0.3,5,"null","null",0],
		[spr_knight_helmet,"Knight Helmet","[equipment,helmet,armorer]",1,"null",0.3,5,"null","null",5],
		//Shields
		[spr_wooden_shield,"Wooden Shield","[equipment,secweapon,armorer]",1,"null",0.5,5,"null","null",0],
		[spr_knight_shield,"Knight Shield","[equipment,secweapon,armorer]",1,"null",0.5,5,"null","null",5],
		//Boots
		[spr_leather_boots,"Leather Boots","[equipment,boots,armorer]",1,"null",0.3,5,"null","null",2],
		//Rings
		[spr_silver_ring,"Silver Ring","[equipment,ring,armorer]",1,"null",0.01,5,"null","null",0],
	/*[Weapons]*/
		/*[Bow]*/
		[spr_bow,"Bow","[equipment,priweapon,armorer]",1,"null",0.3,5,"null","null",0],
		/*[Arrow]*/
		[spr_arrow_pouch,"Arrow","[equipment,secweapon,armorer]",1,"null",0.01,5,"null","null",0],
	/*[Tools]*/
	[spr_tool_saw,"Saw","[workbench,general]",1,"null",0.3,5,"null","null",0],
	[spr_tool_knife,"Knife","[workbench,general]",1,"null",0.3,5,"null","null",0],
	[spr_crucible_with_handle,"Crucible With Handle","[general]",1,"null",0.3,5,"null","null",0],
	/*[Creatures]*/
	[spr_bones,"Bones","[general]",1,"null",0.3,5,"null","null",0],
	/*[Animals]*/
	[spr_raw_meat,"Raw Meat","[cooking,general]",1,"null",0.3,5,"null","null",0],
	[spr_cooked_meat,"Cooked Meat","[cooking,general]",1,"null",0.3,5,"null","null",0],
	[spr_leather,"Leather","[workbench,general]",1,"null",0.3,5,"null","null",0],
	[spr_wool,"Wool","[cooking,workbench,spinningWheel,general]",1,"null",0.1,5,"null","null",0],
	[spr_feather,"Feather","[cooking,workbench,general]",1,"null",0.1,5,"null","null",0],
	/*[Cooking]*/
	[spr_flour,"Flour","[cooking,general]",1,"null",0.5,5,"null","null",0],
	[spr_milk,"Milk","[cooking,general]",1,"null",0.3,5,"null","null",0],
	[spr_egg,"Egg","[cooking,general]",1,"null",0.1,5,"null","null",0],
	/*[Food]*/
	[spr_cake,"Cake","[cooking,general]",1,"null",0.1,5,"null","null",0]
];