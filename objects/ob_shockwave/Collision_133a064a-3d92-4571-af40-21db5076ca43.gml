/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5844636A
/// @DnDArgument : "code" "PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];$(13_10)if (!PLAYER.invuln){$(13_10)	PLAYER.alarm[1] = 25;$(13_10)	PLAYER.invuln = true;$(13_10)	PLAYER.hp -= att;$(13_10)}"
PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];
if (!PLAYER.invuln){
	PLAYER.alarm[1] = 25;
	PLAYER.invuln = true;
	PLAYER.hp -= att;
}