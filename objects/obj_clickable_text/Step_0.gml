/*Recipe {
	material1; 0
	material2; 1
	material3; 2
	product; 3
	count; 4
}*/

if (text == "" && recipe != "null") {
	text += recipe[0]
	if (recipe[1] != "") {
		text += " + " + recipe[1];	
	}
	if (recipe[2] != "") {
		text += " + " + recipe[2];	
	}
	text += " ---> " + string(recipe[4]) + "x " + recipe[3];
}
/*if (global.hudState == "null") {
	instance_destroy();
}*/