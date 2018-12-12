/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5844636A
/// @DnDArgument : "code" "PLAYER.kb = [dirXx*2*PLAYER.spd,dirYy*2*PLAYER.spd];$(13_10)if (!PLAYER.invuln){$(13_10)	PLAYER.alarm[1] = room_speed*2;$(13_10)	PLAYER.invuln = true;$(13_10)	PLAYER.currHP -= att;$(13_10)}"
PLAYER.kb = [dirXx*2*PLAYER.spd,dirYy*2*PLAYER.spd];
if (!PLAYER.invuln){
	PLAYER.alarm[1] = room_speed*2;
	PLAYER.invuln = true;
	PLAYER.currHP -= att;
}