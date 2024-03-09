yspd = yspd + grv;
if place_meeting(x,y,oHuman) and keyboard_check_pressed(ord("E")){
	if sprite_index = sLeverOff {
	sprite_index = sLeverOn;
	with oBlockMove {
		if (ID == other.ID) {
		grv = 0;
		yspd = -1;
		y += yspd;
		}
		}
	}
	
	else {
	sprite_index = sLeverOff;
	with oBlockMove {
		if (ID == other.ID) {
		grv = 0.5;
		yspd = 0;
		y += yspd;
		}
		}
	}
}