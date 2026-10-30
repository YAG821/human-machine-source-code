function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//var for each char
	for (var c = 0; c < 500; c++)
	{
	col_1[c, page_number] = c_white;
	col_2[c, page_number] = c_white;
	col_3[c, page_number] = c_white;
	col_4[c, page_number] = c_white;
	
	text_wave[c, page_number] = 0;
	wave_dir[c, page_number] = c*20;
	
	text_shake[c, page_number] = 0;
	shake_dir[c, page_number] = irandom(360);
	shake_timer[c, page_number] = irandom(4);
	
	}
	
	txtb_spr[page_number] = spr_textbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_ui_diag
}



//important text effects going on here
//first character
//last character
//col1
//col2
//col3
//col4
function scr_text_colour(_begin, _end, _col1, _col2, _col3, _col4) {
	
	for (var c = _begin; c <= _end; c++) {
	
	col_1[c, page_number-1] = _col1
	col_2[c, page_number-1] = _col2
	col_3[c, page_number-1] = _col3
	col_4[c, page_number-1] = _col4
	
	}
	
}
//first character
//last character
function scr_text_wave(_begin, _end){
	for (var c = _begin; c <= _end; c++)
	{
	text_wave[c, page_number-1] = true;	
	}
}

//first character
//last character
function scr_text_shake(_begin, _end){
	for (var c = _begin; c <= _end; c++)
	{
	text_shake[c, page] = true;	
	}
}

/// @param text
///@param [char]
///@param [side]
function scr_text(_text){

	scr_set_defaults_for_text();
	
	text[page_number] = _text;

//get char info
	if argument_count > 1 {
		switch(argument[1])
			{
				
		//rose emotions
		case "rose_angry":
			speaker_sprite[page_number] = spr_rose_spk_angry;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_angry2":
			speaker_sprite[page_number] = spr_rose_spk_angry2;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_blush":
			speaker_sprite[page_number] = spr_rose_spk_blush;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_blush2":
			speaker_sprite[page_number] = spr_rose_spk_blush2;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_blush3":
			speaker_sprite[page_number] = spr_rose_spk_blush3;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_blush4":
			speaker_sprite[page_number] = spr_rose_spk_blush4;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_blush5":
			speaker_sprite[page_number] = spr_rose_spk_blush5;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_bored":
			speaker_sprite[page_number] = spr_rose_spk_bored;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_happy":
			speaker_sprite[page_number] = spr_rose_spk_happy;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_happy2":
			speaker_sprite[page_number] = spr_rose_spk_happy2;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_happy3":
			speaker_sprite[page_number] = spr_rose_spk_happy3;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_neutral":
			speaker_sprite[page_number] = spr_rose_spk_neutral;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_sad":
			speaker_sprite[page_number] = spr_rose_spk_sad;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_sad2":
			speaker_sprite[page_number] = spr_rose_spk_sad2;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_sad3":
			speaker_sprite[page_number] = spr_rose_spk_sad3;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
		case "rose_sus":
			speaker_sprite[page_number] = spr_rose_spk_sus;
			txtb_spr[page_number] = spr_textbox_rose;
			break;
			
				
				
			}	
		}

	//character side
	if argument_count > 2 {
	speaker_side[page_number] = argument[2]; 
		}
		
		
	page_number++;

}

/// @param option
/// @param link_id
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

/// @param text_id
function create_textbox (_text_id) {

	with( instance_create_depth(0, 0, -9999, obj_textbox) )
		{
		scr_gamedialogue(_text_id);
		}
		
}