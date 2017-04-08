///Dead
health_ -= 1;
if (health_ <= 0)
{
    if (instance_exists(obj_plr_attack_parent))
    {
        with (obj_plr_attack_parent) instance_destroy();
    }
    instance_create(x, y, obj_dropped_item);
    (instance_nearest(x, y, obj_dropped_item)).sprite_index = itemSpriteIndex;
    (instance_nearest(x, y, obj_dropped_item)).typeId = typeId;
    (instance_nearest(x, y, obj_dropped_item)).get_attributes = true;
    instance_destroy();
}

