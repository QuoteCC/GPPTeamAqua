/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39A88B1E
/// @DnDArgument : "code" "//get keypress$(13_10)var key_left = keyboard_check(vk_left);$(13_10)var key_right = keyboard_check(vk_right);$(13_10)$(13_10)var sp = 20;$(13_10)$(13_10)$(13_10)var movDir = key_right - key_left;$(13_10)$(13_10)if (alarm[0] == -1){$(13_10)if (movDir == -1){ //left$(13_10)	alarm[0] = 14;$(13_10)	if (currentPos == 1){$(13_10)		currentPos = 3;$(13_10)		depth = 3;$(13_10)		x = locationsX[0];$(13_10)		y = locationsY[0];$(13_10)		path_end();$(13_10)		path_start(p_LtoR, sp*2, path_action_stop, false);$(13_10)		$(13_10)	}$(13_10)	else if (currentPos == 2){$(13_10)		currentPos = 1;$(13_10)		depth = 1;$(13_10)		x = locationsX[1];$(13_10)		y = locationsY[1];$(13_10)		path_end();$(13_10)		path_start(p_MtoL, sp, path_action_stop, false);$(13_10)		//set position to start of path 2, then start on path$(13_10)		$(13_10)	}$(13_10)	else{$(13_10)		currentPos = 2;$(13_10)		depth = 1;$(13_10)		x = locationsX[2];$(13_10)		y = locationsY[2];$(13_10)		path_end();$(13_10)		path_start(p_RtoM, sp, path_action_stop, false);$(13_10)		$(13_10)		//set position to path 1 start$(13_10)	}$(13_10)}$(13_10)else if (movDir == 1){//right$(13_10)		alarm[0] = 14;$(13_10)		if (currentPos == 1){$(13_10)			currentPos = 2;$(13_10)			depth = 1;$(13_10)			x = locationsX[0];$(13_10)			y = locationsY[0];$(13_10)			path_end();$(13_10)			path_start(p_LtoM, sp, path_action_stop, false);$(13_10)			$(13_10)		}$(13_10)		else if (currentPos == 2){ //mid to right$(13_10)			currentPos = 3;$(13_10)			depth = 1;$(13_10)			x = locationsX[1];$(13_10)			y = locationsY[1];$(13_10)			path_end();$(13_10)			path_start(p_MtoR, sp, path_action_stop, false);$(13_10)			$(13_10)		}$(13_10)		else{$(13_10)			currentPos = 1;$(13_10)			depth = 3;$(13_10)			x = locationsX[2];$(13_10)			y = locationsY[2];$(13_10)			path_end();$(13_10)			path_start(p_RtoL, sp*2, path_action_stop, false);$(13_10)			$(13_10)		}$(13_10)	}$(13_10)	else{$(13_10)		//weird garbage	$(13_10)	}$(13_10)}"
//get keypress
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

var sp = 20;


var movDir = key_right - key_left;

if (alarm[0] == -1){
if (movDir == -1){ //left
	alarm[0] = 14;
	if (currentPos == 1){
		currentPos = 3;
		depth = 3;
		x = locationsX[0];
		y = locationsY[0];
		path_end();
		path_start(p_LtoR, sp*2, path_action_stop, false);
		
	}
	else if (currentPos == 2){
		currentPos = 1;
		depth = 1;
		x = locationsX[1];
		y = locationsY[1];
		path_end();
		path_start(p_MtoL, sp, path_action_stop, false);
		//set position to start of path 2, then start on path
		
	}
	else{
		currentPos = 2;
		depth = 1;
		x = locationsX[2];
		y = locationsY[2];
		path_end();
		path_start(p_RtoM, sp, path_action_stop, false);
		
		//set position to path 1 start
	}
}
else if (movDir == 1){//right
		alarm[0] = 14;
		if (currentPos == 1){
			currentPos = 2;
			depth = 1;
			x = locationsX[0];
			y = locationsY[0];
			path_end();
			path_start(p_LtoM, sp, path_action_stop, false);
			
		}
		else if (currentPos == 2){ //mid to right
			currentPos = 3;
			depth = 1;
			x = locationsX[1];
			y = locationsY[1];
			path_end();
			path_start(p_MtoR, sp, path_action_stop, false);
			
		}
		else{
			currentPos = 1;
			depth = 3;
			x = locationsX[2];
			y = locationsY[2];
			path_end();
			path_start(p_RtoL, sp*2, path_action_stop, false);
			
		}
	}
	else{
		//weird garbage	
	}
}