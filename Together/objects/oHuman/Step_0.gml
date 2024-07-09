D_key = keyboard_check(ord("D"));
A_key = keyboard_check(ord("A"));
W_key = keyboard_check_pressed(ord("W"));
wall_climb = keyboard_check(ord("W"));
S_key = keyboard_check(ord("S"));


//calculate movement
xspd = (D_key - A_key) * move_spd;

yspd = yspd + grv;


//Jumping
if (place_meeting(x, y+1,global.Wall)) and (W_key)
{
	yspd = -5;
}

//Horizontal collision(x)
if place_meeting(x + xspd, y,global.Wall) == true
{
	while (!place_meeting(x+sign(xspd), y, global.Wall))
	{
		x = x + sign(xspd);
	}
	xspd = 0;
}
x += xspd;

//Vertical collision(y)
if place_meeting(x, y  + yspd,global.Wall) == true
{
	while (!place_meeting(x, y+sign(yspd), global.Wall))
	{
		y = y + sign(yspd);
	}
	yspd = 0;
}
y += yspd;

//Moving platform collisions
var moving_platform = instance_place(x, y + max(1, yspd), oWallMove);
if (place_meeting(x,y,moving_platform)) {
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

//Scaling walls
wall_stick = false;
if !place_meeting(x,y+1,global.Climb)
{
	if place_meeting(x-1, y,global.Climb) or  place_meeting(x+1, y,global.Climb)
	{
		wall_stick = true;
		yspd = 0;
		if wall_climb
		{
			if!place_meeting(x, y-1,global.Climb)
			y-=2;
			
			else
			while(!place_meeting(x, y-1, global.Climb))
			y=-1;
		}
		if S_key
		{
			if !place_meeting(x, y+4,global.Climb)
			y+=4;
			
			else
			while(!place_meeting(x, y+1,global.Climb))
			y+=1;
		}
	}
}

//Swimming
if place_meeting(x, y, oWater) == true {
	grv = 0.1;
	move_spd = 1.5;
	}
	else {
	grv = 0.3;
	move_spd = 3;
	}

//Death and checkpoints
if place_meeting(x, y, global.Death) == true {
	if (global.checkpointRH == room) {
		oHuman.x = global.checkpointxH;
		oHuman.y = global.checkpointyH;
	}
	else {
		oHuman.x = xstart;
		oHuman.y = ystart;
	}
}

//Push animation
if keyboard_check(vk_shift){
	sprite_index = sHumanPush;
}
else {
	sprite_index = sHuman;
}

//Moving Animation
if (xspd == 0){
image_index = 0;
image_speed = 0;
}
else {
image_speed = 1;
}

if (xspd != 0){
image_xscale = sign(xspd);
}
