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
}*/

var items = [
//  [sprite, name, type/shop, count, durability, weight, price, effect, effectAmount]
	/*[Collectable]*/
		//Ores
		[spr_iron_ore,"Iron Ore","[forge,workbench, blacksmith]",1,"null",0.3,50,"null","null"],
		//Logs
		[spr_oak_log,"Oak Log","[workbench]",1,"null",0.3,50,"null","null"],
		[spr_spruce_log,"Spruce Log","[workbench]",1,"null",0.3,50,"null","null"],
		[spr_birch_log,"Birch Log","[workbench]",1,"null",0.3,50,"null","null"],
	/*[Crafting]*/
		//Coal
		[spr_coal,"Coal","[forge,workbench, blacksmith]",1,"null",0.3,50,"null","null"],
		//Ingots
		[spr_iron_ingot,"Iron Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_steel_ingot,"Steel Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_silver_ingot,"Silver Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_gold_ingot,"Gold Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_bronze_ingot,"Bronze Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_ebony_ingot,"Ebony Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_crimson_ingot,"Crimson Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_adamite_ingot,"Adamite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_fluellite_ingot,"Fluellite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_pinalite_ingot,"Pinalite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_troilite_ingot,"Troilite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_pyrrhotite_ingot,"Pyrrhotite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_zincite_ingot,"Zincite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
		[spr_cavansite_ingot,"Cavansite Ingot","[forge,workbench,blacksmith]",1,"null",0.3,50,"null","null"],
	/*[Tools]*/
	[spr_tool_saw,"Saw","[workbench,blacksmith]",1,"null",0.3,50,"null","null"],
	[spr_tool_knife,"Knife","[workbench,blacksmith]",1,"null",0.3,50,"null","null"]
]
return items;