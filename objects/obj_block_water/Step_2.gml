if (sprite_index != wavingSprite && distance_to_object(obj_fishing_bobber) == 0) {
    image_speed = 0.2;
    sprite_index = wavingSprite;
} else {
    image_speed = 0;
    sprite_index = defaultSprite;
}

