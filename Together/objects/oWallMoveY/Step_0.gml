//moving
if place_free(x, y + yspd){y += yspd}
else {yspd = -yspd};

//hitting the wall
if place_meeting(x, y + yspd, global.Wall) {yspd = -yspd};