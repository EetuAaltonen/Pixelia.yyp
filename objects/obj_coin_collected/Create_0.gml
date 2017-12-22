image_speed = 0.2;
speed_ = 4;
value = 100;

if (instance_exists(obj_money_target) && instance_exists(obj_player)) {    
    move_towards_point(obj_money_target.x, obj_money_target.y, speed_);
} else {
    instance_destroy();
}

