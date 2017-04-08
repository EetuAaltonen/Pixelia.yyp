///Stop bobber
bobberSpeed = 0;
if ((viewXCenter + bobberX) < viewXCenter + (area1Xscale/2) &&
    (viewXCenter + bobberX) > viewXCenter - (area1Xscale/2))
{
    catchChange = 1;
    successText = "Great!";
}
else if ((viewXCenter + bobberX) < (viewXCenter + (area1Xscale/2*4)) &&
        (viewXCenter + bobberX) > (viewXCenter - (area1Xscale/2*4)))
{
    catchChange = 0.5;
    successText = "Nice!";
}
else
{
    catchChange = 0.02;
    successText = "Fail!";
}
alarm[6] = -1;
imageAngle = 0;
alarm[5] = 100;

