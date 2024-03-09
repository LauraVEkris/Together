array_idx = 0;

for (var i = 0; i < instance_number(oSwitch); i++) {
	var instance = instance_find(oSwitch, i);
	
	if (string_lower(instance.door_name) == string_lower(name)){
		SwitchArray[array_idx] = instance;
		array_idx += 1;
	}
}