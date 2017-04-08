///Bobber movement
if ((viewXCenter + bobberX) > (viewXCenter + (210/2)) && bobberDirection == 1)
{
    bobberDirection = -1;
    bobberX -= 2;
    alarm[4] = bobberSpeed;
}
else if ((viewXCenter+ bobberX) < (viewXCenter - (210/2)) && bobberDirection == -1)
{
    bobberDirection = 1;
    bobberX += 2;
    alarm[4] = bobberSpeed;
}

///Bobber image angle
if (imageAngle > 15 &&
    bobberRotateDirection == 1)
{
    imageAngle -= 1;
    bobberRotateDirection = -1;
    alarm[6] = bobberRotateSpeed;
}
else if (imageAngle < -15 &&
    bobberRotateDirection == -1)
{
    imageAngle += 1;
    bobberRotateDirection = 1;
    alarm[6] = bobberRotateSpeed;
}

