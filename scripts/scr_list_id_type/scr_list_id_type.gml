switch(global.hudState)
{
    case "inventory1": {scr_list_id_type_inventory(); break;}
    case "inventoryEquipments": {scr_list_id_type_equipments();break;}
    case "forge":      {scr_list_id_type_forge();break;}
    case "alchemy":    {scr_list_id_type_alchemy();break;}
    case "workbench":    {scr_list_id_type_workbench();break;}
    case "shop":       {scr_list_id_type_shop();break;}
}
