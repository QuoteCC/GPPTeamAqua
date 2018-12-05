/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39A88B1E
/// @DnDArgument : "code" "//get keypress$(13_10)var key_left = keyboard_check(vk_left);$(13_10)var key_right = keyboard_check(vk_right);$(13_10)var locX =  [160, 480, 864];$(13_10)var locY = 352;$(13_10)$(13_10)$(13_10)var sp = 20;$(13_10)$(13_10)$(13_10)var movDir = key_right - key_left;$(13_10)$(13_10)if (alarm[0] == -1){$(13_10)	$(13_10)if (movDir == -1){ //left$(13_10)	alarm[0] = 20;$(13_10)	audio_play_sound(sd_rotate,1,false);$(13_10)	if (currentPos == 1){$(13_10)		currentPos = 3;$(13_10)		depth = 4;$(13_10)		x = locX[0];$(13_10)		y = locY;$(13_10)		path_end();$(13_10)		path_start(p_LtoR, sp*2, path_action_stop, true);$(13_10)		$(13_10)	}$(13_10)	else if (currentPos == 2){$(13_10)		currentPos = 1;$(13_10)		depth = 2;$(13_10)		if global.bPos == 1{$(13_10)			depth = 1$(13_10)		}$(13_10)		x = locX[1];$(13_10)		y = locY;$(13_10)		path_end();$(13_10)		path_start(p_MtoL, sp, path_action_stop, true);$(13_10)		//set position to start of path 2, then start on path$(13_10)		$(13_10)	}$(13_10)	else{$(13_10)		currentPos = 2;$(13_10)		global.bpI[global.bPos] = val;$(13_10)		depth = 2;$(13_10)		if global.bPos == 1{$(13_10)			depth = 1;	$(13_10)		}$(13_10)		x = locX[2];$(13_10)		y = locY;$(13_10)		path_end();$(13_10)		path_start(p_RtoM, sp, path_action_stop, true);$(13_10)		$(13_10)		//set position to path 1 start$(13_10)	}$(13_10)}$(13_10)else if (movDir == 1){//right$(13_10)		alarm[0] = 20;$(13_10)		audio_play_sound(sd_rotate,1,false);$(13_10)		if (currentPos == 1){$(13_10)			currentPos = 2;$(13_10)			global.bpI[global.bPos] = val;$(13_10)			depth = 2;$(13_10)			if global.bPos == 1{$(13_10)				depth = 1;	$(13_10)			}$(13_10)			x = locX[0];$(13_10)			y = locY;$(13_10)			path_end();$(13_10)			path_start(p_LtoM, sp, path_action_stop, true);$(13_10)			$(13_10)		}$(13_10)		else if (currentPos == 2){ //mid to right$(13_10)			currentPos = 3;$(13_10)			depth = 2;$(13_10)			if global.bPos == 1{$(13_10)				depth = 1;	$(13_10)			}$(13_10)			x = locX[1];$(13_10)			y = locY;$(13_10)			path_end();$(13_10)			path_start(p_MtoR, sp, path_action_stop, true);$(13_10)			$(13_10)		}$(13_10)		else{$(13_10)			currentPos = 1;$(13_10)			depth = 4;$(13_10)			x = locX[1];$(13_10)			y = locY;$(13_10)			path_end();$(13_10)			path_start(p_RtoL, sp*2, path_action_stop, true);$(13_10)			$(13_10)		}$(13_10)	}$(13_10)	else{$(13_10)		//weird garbage	$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"
//get keypress
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var locX =  [160, 480, 864];
var locY = 352;


var sp = 20;


var movDir = key_right - key_left;

if (alarm[0] == -1){
	
if (movDir == -1){ //left
	alarm[0] = 20;
	audio_play_sound(sd_rotate,1,false);
	if (currentPos == 1){
		currentPos = 3;
		depth = 4;
		x = locX[0];
		y = locY;
		path_end();
		path_start(p_LtoR, sp*2, path_action_stop, true);
		
	}
	else if (currentPos == 2){
		currentPos = 1;
		depth = 2;
		if global.bPos == 1{
			depth = 1
		}
		x = locX[1];
		y = locY;
		path_end();
		path_start(p_MtoL, sp, path_action_stop, true);
		//set position to start of path 2, then start on path
		
	}
	else{
		currentPos = 2;
		global.bpI[global.bPos] = val;
		depth = 2;
		if global.bPos == 1{
			depth = 1;	
		}
		x = locX[2];
		y = locY;
		path_end();
		path_start(p_RtoM, sp, path_action_stop, true);
		
		//set position to path 1 start
	}
}
else if (movDir == 1){//right
		alarm[0] = 20;
		audio_play_sound(sd_rotate,1,false);
		if (currentPos == 1){
			currentPos = 2;
			global.bpI[global.bPos] = val;
			depth = 2;
			if global.bPos == 1{
				depth = 1;	
			}
			x = locX[0];
			y = locY;
			path_end();
			path_start(p_LtoM, sp, path_action_stop, true);
			
		}
		else if (currentPos == 2){ //mid to right
			currentPos = 3;
			depth = 2;
			if global.bPos == 1{
				depth = 1;	
			}
			x = locX[1];
			y = locY;
			path_end();
			path_start(p_MtoR, sp, path_action_stop, true);
			
		}
		else{
			currentPos = 1;
			depth = 4;
			x = locX[1];
			y = locY;
			path_end();
			path_start(p_RtoL, sp*2, path_action_stop, true);
			
		}
	}
	else{
		//weird garbage	
	}
	
	
}