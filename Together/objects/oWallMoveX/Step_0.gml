//moving
if place_free(x + xspd, y){x += xspd}
else {xspd = -xspd};

//hitting the wall
if place_meeting(x + xspd, y, global.Wall) {xspd = -xspd};