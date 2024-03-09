if place_meeting(x-1, y, oHuman) and keyboard_check(vk_shift){
	x += move_spd;
}
if place_meeting(x+1, y, oHuman) and keyboard_check(vk_shift){
	x -= move_spd;
}
xspd = xspd * move_spd;
yspd = yspd + grv;
//Horizontal (x)
if place_meeting(x + xspd, y,global.Wall) == true
{
	while (!place_meeting(x+sign(xspd), y, global.Wall))
	{
		x = x + sign(xspd);
	}
	xspd = 0;
}
x += xspd;

//Vertical (y)
if place_meeting(x, y  + yspd,global.Wall) == true
{
	while (!place_meeting(x, y+sign(yspd), global.Wall))
	{
		y = y + sign(yspd);
	}
	yspd = 0;
}
y += yspd;
