/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10E8671F
/// @DnDArgument : "code" "var cursor = 0;$(13_10)$(13_10)cursor -= max(keyboard_check_pressed(vk_up), 0);$(13_10)cursor += max(keyboard_check_pressed(vk_down), 0);$(13_10)$(13_10)if (cursor != 0){$(13_10)	bPos += cursor;$(13_10)	indx = array_length_1d(bpI);$(13_10)	if (bPos < 0){$(13_10)		bPos = indx - 1;$(13_10)	}$(13_10)	else if(bPos > indx-1){$(13_10)		bPos = 0;	$(13_10)	}$(13_10)}$(13_10)$(13_10)"
var cursor = 0;

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);

if (cursor != 0){
	bPos += cursor;
	indx = array_length_1d(bpI);
	if (bPos < 0){
		bPos = indx - 1;
	}
	else if(bPos > indx-1){
		bPos = 0;	
	}
}