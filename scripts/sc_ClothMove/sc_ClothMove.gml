/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39A88B1E
/// @DnDArgument : "code" "//get keypress$(13_10)var key_left = keyboard_check(vk_left);$(13_10)var key_right = keyboard_check(vk_right);$(13_10)$(13_10)var movDir = key_right -key_left;$(13_10)$(13_10)switch (movDir){$(13_10)	case -1:$(13_10)		//left$(13_10)		$(13_10)		break;$(13_10)	case 1:$(13_10)		//right$(13_10)		break;$(13_10)	default:$(13_10)		//not moving, or any other weirdness$(13_10)		break;$(13_10)}"
//get keypress
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

var movDir = key_right -key_left;

switch (movDir){
	case -1:
		//left
		
		break;
	case 1:
		//right
		break;
	default:
		//not moving, or any other weirdness
		break;
}