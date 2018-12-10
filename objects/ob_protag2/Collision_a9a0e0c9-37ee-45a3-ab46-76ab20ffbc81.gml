/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0355213A
/// @DnDArgument : "code" "instance_destroy(other);$(13_10)currHP += 25;$(13_10)$(13_10)if currHP > hp{$(13_10)	currHP = hp;	$(13_10)}"
instance_destroy(other);
currHP += 25;

if currHP > hp{
	currHP = hp;	
}