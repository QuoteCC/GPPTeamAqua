/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10864618
/// @DnDArgument : "code" "$(13_10)$(13_10)if (currHP <= 0){$(13_10)	instance_destroy();	$(13_10)}$(13_10)$(13_10)$(13_10)if (act){$(13_10)	//figure out where the player is in comparison to follow$(13_10)	var dirX = sign(PLAYER.x - x);$(13_10)	var dirY = -sign(PLAYER.y - y);$(13_10)	$(13_10)	if (place_meeting(x, y, ob_protag2)){$(13_10)		//set player invuln time and kb$(13_10)		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];$(13_10)		kb = [-dirX*3*spd,-dirY*3*spd];$(13_10)		if (!PLAYER.invuln){$(13_10)			PLAYER.alarm[1] = 25;$(13_10)			PLAYER.invuln = true;$(13_10)			PLAYER.hp -= att;$(13_10)		}$(13_10)	}$(13_10)	if (place_meeting(x,y,ob_pBullet)){$(13_10)		oth = instance_place(x,y,ob_pBullet)$(13_10)		if (ds_list_find_index(oth.expended, id) == -1){$(13_10)			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]$(13_10)			currHP -= oth.dam*PLAYER.att;$(13_10)			ds_list_add(oth.expended, id);$(13_10)		}$(13_10)		$(13_10)		//instance_destroy(oth);$(13_10)	}$(13_10)	$(13_10)	moveH = dirX;$(13_10)	moveV = dirY;$(13_10)		$(13_10)	sc_Move();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"


if (currHP <= 0){
	instance_destroy();	
}


if (act){
	//figure out where the player is in comparison to follow
	var dirX = sign(PLAYER.x - x);
	var dirY = -sign(PLAYER.y - y);
	
	if (place_meeting(x, y, ob_protag2)){
		//set player invuln time and kb
		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];
		kb = [-dirX*3*spd,-dirY*3*spd];
		if (!PLAYER.invuln){
			PLAYER.alarm[1] = 25;
			PLAYER.invuln = true;
			PLAYER.hp -= att;
		}
	}
	if (place_meeting(x,y,ob_pBullet)){
		oth = instance_place(x,y,ob_pBullet)
		if (ds_list_find_index(oth.expended, id) == -1){
			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]
			currHP -= oth.dam*PLAYER.att;
			ds_list_add(oth.expended, id);
		}
		
		//instance_destroy(oth);
	}
	
	moveH = dirX;
	moveV = dirY;
		
	sc_Move();
}