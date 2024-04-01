right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//Calculate movement
xspd = (right_key - left_key) * move_spd;

yspd = yspd + grv;

if (place_meeting(x, y+1,global.Wall)) and (up_key) {
	yspd = -4;
}

//Collisions and movement
if place_meeting(x + xspd, y, global.Wall) == true {
	while (!place_meeting(x+sign(xspd), y, global.Wall))
	{
		x = x + sign(xspd);
	}
	xspd = 0;
}
x += xspd;

if place_meeting(x, y  + yspd, global.Wall) == true {
	while (!place_meeting(x, y+sign(yspd), global.Wall)) {
		y = y + sign(yspd);
	}
	yspd = 0;
}
y += yspd;

//Moving platform collisions
var moving_platform = instance_place(x, y + max(1, yspd), oWallMove);
if (moving_platform and bbox_bottom <= moving_platform.bbox_top) {
	if (yspd > 0) {
		while (!place_meeting(x, y + sign(yspd), oWallMove)){
			y += sign(yspd);
		}
		xspd = 0;
		yspd = 0;
	}
	x += moving_platform.xspd;
	y += moving_platform.yspd;
}

//Death and checkpoints
if place_meeting(x, y, global.Death) == true {
	if (global.checkpointRC == room) {
	oCat.x = global.checkpointxC;
	oCat.y = global.checkpointyC;
	}
	else {
		oCat.x = xstart;
		oCat.y = ystart;
	}
}
//Animation and crouching
if down_key {
	sprite_index = sCatCrouch;
	mask_index = sCatCrouch;
}
else {
	if (xspd == 0){
	sprite_index = sCat;
	}
	else {
	sprite_index = sCatWalk;
	mask_index = sCat
	}
}

if (xspd != 0){
image_xscale = sign(xspd);
}
