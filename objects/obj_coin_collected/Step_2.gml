///Move to pouch
speed_ = obj_player.speed + 4;
if (instance_exists(obj_money_target) && instance_exists(obj_player)) {
    move_towards_point(obj_money_target.x, obj_money_target.y, speed_)
    if (distance_to_object(obj_money_target) < 20) {
        global.coins += value;
        if (obj_inventory_controller.image_scale_coin == 1) {
            obj_inventory_controller.alarm[4] = 5;
        }
        instance_destroy();
    }
} else {
    instance_destroy();
}

