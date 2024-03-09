for (var i = 0; i < instance_number(oDoor); i++) {
 var instance = instance_find(oDoor, i);
 
 if (instance != noone) {
	if (string_lower(instance.name) == string_lower(door_name)){
	target = instance;
	break;
	}
 }
}