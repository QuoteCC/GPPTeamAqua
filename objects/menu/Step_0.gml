/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10E8671F
/// @DnDArgument : "code" "var cursor = 0;$(13_10)$(13_10)cursor -= max(keyboard_check_pressed(vk_up), 0);$(13_10)cursor += max(keyboard_check_pressed(vk_down), 0);$(13_10)$(13_10)if (cursor != 0 && global.lkout){$(13_10)	audio_play_sound(sd_menuArrow,1,false);$(13_10)	global.bPos += cursor;$(13_10)	var len = array_length_1d(global.bpI);$(13_10)	if (global.bPos < 0){$(13_10)		global.bPos = len - 1;$(13_10)	}$(13_10)	else if(global.bPos > len-1){$(13_10)		global.bPos = 0;	$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (keyboard_check_pressed(vk_space) == 1){$(13_10)	global.lkout = false;$(13_10)	instance_create_depth(640, 400,-1,cs_portal);$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
var cursor = 0;

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);

if (cursor != 0 && global.lkout){
	audio_play_sound(sd_menuArrow,1,false);
	global.bPos += cursor;
	var len = array_length_1d(global.bpI);
	if (global.bPos < 0){
		global.bPos = len - 1;
	}
	else if(global.bPos > len-1){
		global.bPos = 0;	
	}
}



if (keyboard_check_pressed(vk_space) == 1){
	global.lkout = false;
	instance_create_depth(640, 400,-1,cs_portal);
	
}