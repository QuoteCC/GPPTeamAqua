/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BC3A986
/// @DnDArgument : "code" "if (sprite_index == sp_chestClosed){$(13_10)	other.powerUp += 1;$(13_10)	audio_play_sound(sd_powerUp, 1, false);$(13_10)	sprite_index = sp_chestOpen;$(13_10)}"
if (sprite_index == sp_chestClosed){
	other.powerUp += 1;
	audio_play_sound(sd_powerUp, 1, false);
	sprite_index = sp_chestOpen;
}