if (!instance_exists(oHuman)|| !instance_exists(oCat)){
	xTo = xStart;
	yTo = yStart;
}

if (instance_exists(oCat) || instance_exists(oHuman)) {
	if (follow != noone){
		xTo = follow.x;
		yTo = follow.y;
	}

	x += (xTo - x)/25;
	y += (yTo - y)/25;

	camera_set_view_pos(view_camera[0], x - (camWidth*0.5), y - (camHeight*0.5));

	if keyboard_check_pressed(vk_space){
		if (follow = oHuman){follow = oCat}
		else {follow = oHuman}
	}
}

// Update destination
if (instance_exists(follow)) {
  xTo = follow.x;
  yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

camera_set_view_size(cam, currW, currH);

// Clamp camera 
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Update camera position
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);