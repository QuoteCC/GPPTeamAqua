/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10E8671F
/// @DnDArgument : "code" "var cursor = 0;$(13_10)$(13_10)cursor -= max(keyboard_check_pressed(vk_up), 0);$(13_10)cursor += max(keyboard_check_pressed(vk_down), 0);$(13_10)$(13_10)if (cursor != 0){$(13_10)	global.bPos += cursor;$(13_10)	indx = array_length_1d(bpI);$(13_10)	if (bPos < 0){$(13_10)		global.bPos = indx - 1;$(13_10)	}$(13_10)	else if(bPos > indx-1){$(13_10)		global.bPos = 0;	$(13_10)	}$(13_10)}$(13_10)$(13_10)//should do a minor animation on this, maybe just do it via sprite though$(13_10)$(13_10)"
var cursor = 0;

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);

if (cursor != 0){
	global.bPos += cursor;
	indx = array_length_1d(bpI);
	if (bPos < 0){
		global.bPos = indx - 1;
	}
	else if(bPos > indx-1){
		global.bPos = 0;	
	}
}

//should do a minor animation on this, maybe just do it via sprite though