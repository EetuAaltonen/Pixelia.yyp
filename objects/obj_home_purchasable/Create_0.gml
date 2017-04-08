price = 0;
alarm[1] = 10;
Id = string("obj_home_purchasable:" + string(x) + "," + string(y))
State = "on_sale";
ini_open("Save.sav");
State = ini_read_string("Save1",Id,"on_sale");
ini_close();

//Confirm purchse
i = 0;

