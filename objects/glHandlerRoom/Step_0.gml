/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2FF4CC9F
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_escape)){$(13_10)	if (!pause){$(13_10)		pause = true;$(13_10)		instance_deactivate_all(true);$(13_10)	}$(13_10)	else{$(13_10)		pause = false;$(13_10)		instance_activate_all();$(13_10)	}$(13_10)}$(13_10)$(13_10)if (pause){$(13_10)	var cursor = 0;$(13_10)$(13_10)	cursor -= max(keyboard_check_pressed(vk_up), 0);$(13_10)	cursor += max(keyboard_check_pressed(vk_down), 0);$(13_10)$(13_10)	if (cursor != 0){$(13_10)		audio_play_sound(sd_menuArrow,1,false);$(13_10)		pos += cursor;$(13_10)		indx = array_length_1d(opt);$(13_10)		if (pos < 0){$(13_10)			pos = indx - 1;$(13_10)		}$(13_10)		else if(pos > indx-1){$(13_10)			pos = 0;	$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if (pause && keyboard_check_pressed(vk_space)){$(13_10)	switch(pos){$(13_10)		case 0:$(13_10)		pause = false;$(13_10)		instance_activate_all();$(13_10)		break;$(13_10)		case 1: $(13_10)		room_goto(rm_dressUp);$(13_10)		break;$(13_10)		case 2:$(13_10)		game_end();$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)"
if (keyboard_check_pressed(vk_escape)){
	if (!pause){
		pause = true;
		instance_deactivate_all(true);
	}
	else{
		pause = false;
		instance_activate_all();
	}
}

if (pause){
	var cursor = 0;

	cursor -= max(keyboard_check_pressed(vk_up), 0);
	cursor += max(keyboard_check_pressed(vk_down), 0);

	if (cursor != 0){
		audio_play_sound(sd_menuArrow,1,false);
		pos += cursor;
		indx = array_length_1d(opt);
		if (pos < 0){
			pos = indx - 1;
		}
		else if(pos > indx-1){
			pos = 0;	
		}
	}
}

if (pause && keyboard_check_pressed(vk_space)){
	switch(pos){
		case 0:
		pause = false;
		instance_activate_all();
		break;
		case 1: 
		room_goto(rm_dressUp);
		break;
		case 2:
		game_end();
		break;
	}
}