/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10864618
/// @DnDArgument : "code" "if (x>view_xview[0]) && (y>view_yview[0]) && (x<view_xview[0]+view_wview[0]) && (y<view_yview[0]+view_hview[0]){$(13_10)	active = true;	$(13_10)}$(13_10)$(13_10)$(13_10)if (active){$(13_10)	//figure out where the player is in comparison to follow$(13_10)	var dirX = sign(PLAYER.x - x);$(13_10)	var dirY = sign(PLAYER.y - y);$(13_10)	$(13_10)	if (place_meeting(x, y, ob_protag2){$(13_10)		//set player invuln time and kb$(13_10)	}$(13_10)	else{$(13_10)		$(13_10)	$(13_10)		hsp = dirX * spd;$(13_10)		vsp = dirY * spd;$(13_10)	}$(13_10)		$(13_10)	sc_Move();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
if (x>view_xview[0]) && (y>view_yview[0]) && (x<view_xview[0]+view_wview[0]) && (y<view_yview[0]+view_hview[0]){
	active = true;	
}


if (active){
	//figure out where the player is in comparison to follow
	var dirX = sign(PLAYER.x - x);
	var dirY = sign(PLAYER.y - y);
	
	if (place_meeting(x, y, ob_protag2){
		//set player invuln time and kb
	}
	else{
		
	
		hsp = dirX * spd;
		vsp = dirY * spd;
	}
		
	sc_Move();
}