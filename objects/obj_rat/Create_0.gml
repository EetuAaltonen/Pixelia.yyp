image_speed = 0;

//Attack
attack = false;
can_punch = true;

//Jump
jump = false;

//Damage
get_damage = 1;

//Stats generator
def = 0;
str = 0;
mag = 0;

def_ = 0;
str_ = 0;
mag_ = 0;

rand = random_range(30, 48);
if (rand < 10 )
{
    str_ = 1;
}
else if (rand >= 10 and rand <= 20)
{
    def_ = 1;
}

else if (rand > 30 and rand < 35)
{
    str_ = 5; 
}
else if (rand > 35 and rand < 40)
{
    def_ = 5; 
}
else if (rand == 46)
{
    str_ = 10; 
}
else if (rand == 47)
{
    def_ = 10; 
}
//Strength
str = 1 + str_;

//Defence
def = 1 + def_;

//Magic
mag = 0;

//Stats draw
draw_state = false;

