/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10864618
/// @DnDArgument : "code" "if (x>view_xview[0]) && (y>view_yview[0]) && (x<view_xview[0]+view_wview[0]) && (y<view_yview[0]+view_hview[0]){$(13_10)	active = true;	$(13_10)}$(13_10)$(13_10)$(13_10)if (active){$(13_10)	//figure out where the player is in comparison to follow$(13_10)	var dirX = sign(PLAYER.x - x);$(13_10)	var dirY = -sign(PLAYER.y - y);$(13_10)	$(13_10)	if (place_meeting(x, y, ob_protag2)){$(13_10)		//set player invuln time and kb$(13_10)		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];$(13_10)		kb = [-dirX*3*spd,-dirY*3*spd];$(13_10)		if (!PLAYER.invuln){$(13_10)			PLAYER.alarm[1] = 16;$(13_10)			PLAYER.invuln = true;$(13_10)			PLAYER.hp -= att;$(13_10)		}$(13_10)	}$(13_10)	else{$(13_10)	}$(13_10)	$(13_10)	moveH = dirX;$(13_10)	moveV = dirY;$(13_10)		$(13_10)	sc_Move();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
if (x>view_xview[0]) && (y>view_yview[0]) && (x<view_xview[0]+view_wview[0]) && (y<view_yview[0]+view_hview[0]){
	active = true;	
}


if (active){
	//figure out where the player is in comparison to follow
	var dirX = sign(PLAYER.x - x);
	var dirY = -sign(PLAYER.y - y);
	
	if (place_meeting(x, y, ob_protag2)){
		//set player invuln time and kb
		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];
		kb = [-dirX*3*spd,-dirY*3*spd];
		if (!PLAYER.invuln){
			PLAYER.alarm[1] = 16;
			PLAYER.invuln = true;
			PLAYER.hp -= att;
		}
	}
	else{
	}
	
	moveH = dirX;
	moveV = dirY;
		
	sc_Move();
}