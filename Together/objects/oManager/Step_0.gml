//finishing a level
if (room != rEnd) && (room!= rEndScene){
	if instance_number(oPage) == 0{
		if instance_exists(oLectern){
			with oLectern {
				if place_meeting(x,y,oHuman) and place_meeting(x,y,oCat){
				room_goto_next();	
				}		
			}
		}
		else{
	    room_goto_next();
		}
	}  
}


//menu and shortcut controls
if keyboard_check_pressed(vk_backspace){ 
	room_restart();
}

if keyboard_check_pressed(vk_escape){
	room_goto(rTitle);
}

if room == rEnd {
instance_destroy(oCamera);
}