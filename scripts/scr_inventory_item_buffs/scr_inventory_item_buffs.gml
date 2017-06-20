///scr_inventory_item_stats(argument0);
var spriteIndex = string(argument0);
var buffs = ds_list_create();
switch(spriteIndex) {
	/*
		buffs = {
			name: x,
			amount: x,
			...
			name: x,
			amount: x,
		}
	*/
    //Equipments
		//Helmets
		case "spr_broken_helmet": {ds_list_add(buffs,"Movement speed");ds_list_add(buffs,10);break;}
		/*case "spr_knight_helmet": {ds_list_add(buffs,"Critical chance");ds_list_add(buffs,25);
								   ds_list_add(buffs,"Dodge chance");ds_list_add(buffs,10);break;}*/
		//Shields
		//case "spr_wooden_shield": {ds_list_add(buffs,"");ds_list_add(buffs,5);break;}
		//case "spr_knight_shield": {ds_list_add(buffs,"");ds_list_add(buffs,5);break;}
		//Boots
		case "spr_leather_boots": {ds_list_add(buffs,"Carrying capacity");ds_list_add(buffs,10);break;}
		//Rings
		case "spr_silver_ring": {ds_list_add(buffs,"Carrying capacity");ds_list_add(buffs,10);break;}
};
return buffs;