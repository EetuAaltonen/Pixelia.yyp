/// @description Bobber horizontal movement
if (fishingState == Fishing.Minigame) {    
    bobberX += (2 * bobberDirection);
    alarm[3] = bobberSpeed;
}