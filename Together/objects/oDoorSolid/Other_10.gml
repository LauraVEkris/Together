var can_unlock = true;

for (var idx = 0; idx < array_length_1d(SwitchArray); idx++){
	var instance = SwitchArray[idx];
	
	if instance.has_to_be_enabled != instance.enabled {
	can_unlock = false;	
	}
}
if (can_unlock){
image_index = 1;
instance_destroy(solid_target);
solid_target = noone;
}
else {
	image_index = 0;
	if (solid_target == noone) {
		solid_target = instance_create_layer(x, y, "Collisions", oBlock);
		//scaling
		var height_scale = sprite_height / solid_target.sprite_height;
		var width_scale = sprite_width / solid_target.sprite_width;

		solid_target.image_xscale = width_scale;
		solid_target.image_yscale = height_scale;
	}
}