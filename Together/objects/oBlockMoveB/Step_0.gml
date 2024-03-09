if (active == true) {
	if (instance_exists(oPoint) and (oPoint.ID == oBlockMoveB.ID)) {
		var TargetX = endX, TargetY = endY;
		if (ToStart) {
			TargetX = startX;
			TargetY = startY;
		}
		MoveX = sign(TargetX - x) * spd;
		MoveY = sign(TargetY - y) * spd;
		x += MoveX;
		y += MoveY;

	// Check if it's at start position
	if (ToStart && point_distance(x, y, startX, startY) < spd) {
		Start = false;
		spd = 0;
	}
	// Check if it's at ending position
	else if (!ToStart && point_distance(x, y, endX, endY) < spd) {
		ToStart = true;
		spd = 0;
	}
		
	}
	else if (Ystart - sprite_height < y) {y -= 0.5;}
} 
