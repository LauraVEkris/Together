//get input
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
//store nmbr of options
op_length = array_length(option[menu_level]);


//move through menu
pos += down_key - up_key;
if pos >= op_length{pos = 0};
if pos < 0 {pos = op_length - 1};

//using options
if accept_key {
	
	var _sml = menu_level;
	
	switch (menu_level){
	//main menu
	case 0:
		switch (pos){
		case 0:
		{
			if (!file_exists(SAVEFILE)){
				room_goto(rLvl1);
			}
			else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				room_goto(target);
			}
		}
			break;
	
		case 1: menu_level = 1; break;

		case 2: game_end(); break;
		}
		break;
	//delete info?
	case 1:
		switch(pos){
		case 0:
			if (file_exists(SAVEFILE)) {file_delete(SAVEFILE)};
			room_goto(rLvl1);
			break;
		case 1:
			menu_level = 0;
			break;
		}
	}
	if _sml != menu_level {pos = 0};
	//correct option length
	op_length = array_length(option[menu_level]);
}