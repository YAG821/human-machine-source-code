if place_meeting(x, y, obj_player) {
	//what happens when just touching
	if keyboard_check_pressed(ord("Z")) && !instance_exists(obj_textbox) || keyboard_check_pressed(ord("M"))  && !instance_exists(obj_textbox){
	create_textbox(text_id);
	};
	};
	