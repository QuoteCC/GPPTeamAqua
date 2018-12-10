/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CB230FA
/// @DnDArgument : "code" "if (!global.won && alarm[0] == -1 && tog){$(13_10)	sprite_index = sp_gameOver2;$(13_10)	audio_play_sound(sd_enemyDie, 1, false);$(13_10)	audio_play_sound(sd_gameOver,2,true);$(13_10)	tog = false;$(13_10)}$(13_10)if (keyboard_check_pressed(vk_space)){$(13_10)	room_goto(rm_dressUp);	$(13_10)}$(13_10)else if (keyboard_check_pressed(vk_escape)){$(13_10)	game_end();	$(13_10)}"
if (!global.won && alarm[0] == -1 && tog){
	sprite_index = sp_gameOver2;
	audio_play_sound(sd_enemyDie, 1, false);
	audio_play_sound(sd_gameOver,2,true);
	tog = false;
}
if (keyboard_check_pressed(vk_space)){
	room_goto(rm_dressUp);	
}
else if (keyboard_check_pressed(vk_escape)){
	game_end();	
}