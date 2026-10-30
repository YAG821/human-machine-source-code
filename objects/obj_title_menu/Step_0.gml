//get inputs
up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("I"));
down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(ord("K"));
accept_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("M"));

//store number of options in current menu
op_length = array_length(option[menu_level]);

//move through the menu
pos+= down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


//using the options
if accept_key {
	
	var _sml = menu_level;
	
	switch(menu_level) {
	
		//pause menu
		case 0:
			switch(pos) {	
				//start game
				case 0: room_goto_next(); break;	
				//load game
				case 1: break;
				//quit
				case 2: game_end(); break;
				}
			break;
		


		}
	
	//set position back
	if _sml != menu_level {pos = 0};

	//correct option length
	op_length = array_length(option[menu_level]);
	
	}