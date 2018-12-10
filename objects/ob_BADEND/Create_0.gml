/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 041CD37B
/// @DnDArgument : "code" "txt = "";$(13_10)tog = false;$(13_10)if global.won{$(13_10)	sprite_index = sp_gameOver2;	$(13_10)	txt = "CONGRATS";$(13_10)}$(13_10)else{$(13_10)	alarm[0] = 30;$(13_10)	txt = "GAME OVER";$(13_10)	tog = true;$(13_10)}$(13_10)$(13_10)$(13_10)"
txt = "";
tog = false;
if global.won{
	sprite_index = sp_gameOver2;	
	txt = "CONGRATS";
}
else{
	alarm[0] = 30;
	txt = "GAME OVER";
	tog = true;
}