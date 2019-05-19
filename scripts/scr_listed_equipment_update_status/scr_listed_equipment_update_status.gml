var equipmentIndex = argument0;
if (instance_exists(obj_listed_equipment)) {
	var i;
	var listedEquipment;
	var equipmentCount = instance_number(obj_listed_equipment);
	for (i = 0; i < equipmentCount; i++) {
		listedEquipment = instance_find(obj_listed_equipment, i);
		if (listedEquipment.equipmentIndex == equipmentIndex) {
			listedEquipment.updateValues = true;
		}
	}
}