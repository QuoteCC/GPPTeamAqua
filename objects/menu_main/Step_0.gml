/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10E8671F
/// @DnDArgument : "code" "var cursor = 0;$(13_10)$(13_10)cursor -= max(keyboard_check_pressed(vk_up), 0);$(13_10)cursor += max(keyboard_check_pressed(vk_down), 0);$(13_10)$(13_10)if (cursor != 0){$(13_10)	audio_play_sound(sd_menuArrow,1,false);$(13_10)	cPos += cursor;$(13_10)	indx = array_length_1d(cPoI);$(13_10)	if (cPos < 0){$(13_10)		cPos = indx - 1;$(13_10)	}$(13_10)	else if(cPos > indx-1){$(13_10)		cPos = 0;	$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){$(13_10)	switch(cPos){$(13_10)		case 0: room_goto(rm_dressUp);$(13_10)		break;$(13_10)		case 1: game_end();$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
var cursor = 0;

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);

if (cursor != 0){
	audio_play_sound(sd_menuArrow,1,false);
	cPos += cursor;
	indx = array_length_1d(cPoI);
	if (cPos < 0){
		cPos = indx - 1;
	}
	else if(cPos > indx-1){
		cPos = 0;	
	}
}



if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)){
	switch(cPos){
		case 0: room_goto(rm_dressUp);
		break;
		case 1: game_end();
		break;
	}
}