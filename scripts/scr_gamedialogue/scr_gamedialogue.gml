/// @param text_id
function scr_gamedialogue(_text_id){
	
switch(_text_id) {
	
	case "rose_lair_pcinfo":
		scr_text("There is a computer fixed to the wall.");
		scr_text("It's got some information on the screen.");
			scr_option("Controls", "rose_lair_pcinfo - controls");
			scr_option("Saves", "rose_lair_pcinfo - saves");
			break;
		case "rose_lair_pcinfo - controls":
			scr_text("Use W, A, S, D to move around the world! (Alternatively: I, J, K, L for left-handed movement-focused controls!)");
				scr_text_colour(4, 4, c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(7, 7, c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(10, 10, c_aqua, c_aqua, c_aqua, c_aqua);  scr_text_colour(13, 13, c_aqua, c_aqua, c_aqua, c_aqua);  
				scr_text_colour(57, 57, c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(60, 60, c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(63, 63, c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(66, 66, c_aqua, c_aqua, c_aqua, c_aqua);
			scr_text("Use M to interact with objects and people and skip dialogue! (Alternatively: Z for left-handed movement-focused controls!)");
				scr_text_colour(4, 4,  c_aqua, c_aqua, c_aqua, c_aqua); scr_text_colour(77, 77,  c_aqua, c_aqua, c_aqua, c_aqua); 
			break;
		case "rose_lair_pcinfo - saves":
			scr_text("Save/Load functions will be available soon!");
			break;
	
	case "rose_lair_devtest_pcinfo":
		scr_text("This is a room made for testing future features still in development.");
		scr_text("More information can be found here.");
			scr_option("Musical Switching","rose_lair_devtest_pcinfo - musical_switching");
			scr_option("Text Wave","rose_lair_devtest_pcinfo - text_wave");
			scr_option("Text Shake","rose_lair_devtest_pcinfo - text_shake");
			scr_option("Text Wave + Shake","rose_lair_devtest_pcinfo - text_wave_plus_shake");
			break;
		case "rose_lair_devtest_pcinfo - musical_switching":
			scr_text("The Music Manager is designed to tell the engine what audio file shall be played in the background during the stay on each room.");
				scr_text_colour(4, 16, c_aqua, c_aqua, c_aqua, c_aqua);
			scr_text("The Music Block tells the room to switch the audio file playing in the background for when the player makes contact with it.");
				scr_text_colour(4, 14, c_aqua, c_aqua, c_aqua, c_aqua);
				break;
			case "rose_lair_devtest_pcinfo - text_wave":
				scr_text("Text wave example.");
					scr_text_wave(0, 17);
					break;
				case "rose_lair_devtest_pcinfo - text_shake":
				scr_text("Text shake example.");
					scr_text_shake(0, 18);
				break;
				case "rose_lair_devtest_pcinfo - text_wave_plus_shake":
				scr_text("Text wave + shake example.");
					scr_text_wave(0, 25); scr_text_shake(0, 25);
				break;
	
	case "rose_lair_outlets":
		scr_text("I have no idea where these outlets come from, you never dared touch them." , "rose_neutral");
		scr_text("Hmm..." , "rose_sus");
			scr_option("Stab", "rose_lair_outlets - accept_stab");
			scr_option("Do not", "rose_lair_outlets - deny_stab");
			break;
		case "rose_lair_outlets - accept_stab":
			scr_text("Oww... that hurt a lot..." , "rose_sad2");
			break;
		case "rose_lair_outlets - deny_stab":
			scr_text("Not today, thanks." , "rose_bored");
			break;
		
	case "rose_lair_companioncube_prologue":
		scr_text("It's a companion cube.");
		scr_text("It has always been there for you, to help you, to make you happy.");
			break;
			
	case "rozkoszy_dungeon_avalanche":
		scr_text("There may or may not have been something there." , "rose_neutral");
		scr_text("Whatever it may or may not have been, it's now a sad pile of rubble." , "rose_bored");
			break;
		
	case "rozkoszy_north_to_center_roselairentrancestairway":
		scr_text("The stairway to paradise!" , "rose_happy");
		scr_text("Well, that 'paradise' is actually down there, so..." , "rose_bored");
		scr_text("The downward stairway to paradise!" , "rose_happy");
			break;
			
	case "rozkoszy_north_to_center_roselairentrancesign":
		scr_text("Here resides Rose the robot.");
			scr_text_colour(13, 16,  c_lime, c_lime, c_lime, c_lime);
		scr_text("That's me!" , "rose_happy");
		scr_text("Humans are welcome to pass by, as long as they don't vandalise.");
			break;
			
	case "rozkoszy_center_bigsign":
		scr_text("'Rozkoszy Forest; Scenic Route'");
		scr_text("Well, it sure is the one thing that robots haven't touched..." , "rose_neutral");
		scr_text("Except me, of course." , "rose_bored");
		scr_text("But I would never dare destroy this beautiful forest..." , "rose_sad2");
			break;
			
	case "rozkoszy_center_bigsign_behind":
		scr_text("You with the insatiable thirst for secrets.");
		scr_text("Read within the strings.");
		scr_text("Look outside the boundaries.");
		scr_text("Find the way to go...");
		scr_text("You will see such interesting things.");
		scr_text("...or hear.");
			break;
			
	case "rozkoszy_left_to_center_singletree":
		scr_text("This single tree is out here, all alone..." , "rose_sad");
		scr_text("Poor tree..." , "rose_sad2");
			break;
			
	case "rozkoszy_down_to_left_singleflower":
		scr_text("This single flower is out here, all alone..." , "rose_sad");
		scr_text("Poor flower..." , "rose_sad2");
			break;
			
	case "rozkoszy_center_exitsignbeta":
		scr_text("Wait, what the..?" , "rose_sus");
		scr_text("Due to lingering procrastination, we have no idea when this path will be open in the next beta.");
		scr_text("Oh come on!" , "rose_angry");
		scr_text("Well, I guess we need to wait until the next version comes out..." , "rose_blush2");
		scr_text("Wait, what are these words that are coming out of my mouth?" , "rose_blush3");
			break;
			
	case "followup":
		scr_text(YT_projecthumanmachine22474);
		break;
	}

}