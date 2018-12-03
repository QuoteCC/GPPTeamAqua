/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 277CE87E
/// @DnDArgument : "code" "if not act{$(13_10)	act = true;$(13_10)	switch (irandom(2)){$(13_10)		case 0:$(13_10)			audio_play_sound(sd_gobActivate1, 1, false);$(13_10)			break;$(13_10)		case 1:$(13_10)			audio_play_sound(sd_gobActivate2, 1, false);$(13_10)			break;$(13_10)		default:$(13_10)			audio_play_sound(sd_gobActivate3, 1, false);$(13_10)			break;$(13_10)	}$(13_10)}$(13_10)"
if not act{
	act = true;
	switch (irandom(2)){
		case 0:
			audio_play_sound(sd_gobActivate1, 1, false);
			break;
		case 1:
			audio_play_sound(sd_gobActivate2, 1, false);
			break;
		default:
			audio_play_sound(sd_gobActivate3, 1, false);
			break;
	}
}