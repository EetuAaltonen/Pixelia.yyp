///Check recipes
if (instance_exists(obj_crafting_slot_1) &&
    instance_exists(obj_crafting_slot_2) &&
    instance_exists(obj_crafting_slot_3))
{
    
    var slot1 = obj_crafting_slot_1;
    var slot2 = obj_crafting_slot_2;
    var slot3 = obj_crafting_slot_3;
    if (checkRecipe)
    {
        scr_crafting_check_recipe(slot1.spriteIndex, slot2.spriteIndex, slot3.spriteIndex);
    }
}
else
{
    instance_destroy();
}

///Instance destroy
if (global.hudState == "null")
{
    instance_destroy();
}

