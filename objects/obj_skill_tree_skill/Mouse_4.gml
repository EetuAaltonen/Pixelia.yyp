///Unlock skill
if (unlocked == false)
{
    //if (global.skillPoints >= price)
    //{    
        global.skillPoints -= price;
        var key = "Skill[" + string(id_x) + "," + string(id_y) + "]";
        ini_open("SkillTree.sav");
        ini_write_string(global.save_file,key,"true");
        ini_close();
        unlocked = true;
        alarm[1] = blend_time;
        scr_check_unlocked_skills();
    //}
    //else
    //{
    //    show_message("Not enough skill points!");
    //}
}

