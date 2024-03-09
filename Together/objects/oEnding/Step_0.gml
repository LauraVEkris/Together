//Progress text
letters += spd;
text = string_copy(endtext[currentLine], 1, floor(letters));
//Next line
if (letters >= length) and (keyboard_check_pressed(vk_anykey)){
	if (currentLine + 1 = array_length_1d(endtext)){
		room_goto(rEndScene);
	}
	else {
		currentLine ++;
		letters = 0;
		length = string_length(endtext[currentLine]);
	}
}