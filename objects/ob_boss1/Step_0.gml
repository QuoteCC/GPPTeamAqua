/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39719076
/// @DnDArgument : "code" "$(13_10)if currHP <= 0{$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(sd_enemyDie, 1, false);$(13_10)	audio_play_sound(sd_Dung, 2, true);$(13_10)	instance_create_layer(self.x,self.y, self.layer, ob_chest);$(13_10)	$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)$(13_10)//movement here$(13_10)var dirX = sign(PLAYER.x - x);$(13_10)var dirY = -sign(PLAYER.y - y);	$(13_10)$(13_10)if (sprite_index == sp_gobMove){$(13_10)	moveH = dirX;$(13_10)	moveV = dirY;$(13_10)		$(13_10)	sc_Move();$(13_10)	if (irandom(100) > 97){$(13_10)		sprite_index = sp_gobAtt;$(13_10)	}$(13_10)}$(13_10)if (place_meeting(x, y, ob_protag2)){$(13_10)		//set player invuln time and kb$(13_10)		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];$(13_10)		kb = [-dirX*3*spd,-dirY*3*spd];$(13_10)		if (!PLAYER.invuln){$(13_10)			PLAYER.alarm[1] = 25;$(13_10)			PLAYER.invuln = true;$(13_10)			PLAYER.currHP -= att;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)if (place_meeting(x,y,ob_pBullet)){$(13_10)		oth = instance_place(x,y,ob_pBullet)$(13_10)		if (ds_list_find_index(oth.expended, id) == -1){$(13_10)			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]$(13_10)			currHP -= oth.dam*PLAYER.att*4;$(13_10)			ds_list_add(oth.expended, id);$(13_10)		}$(13_10)		$(13_10)	}$(13_10)$(13_10)$(13_10)$(13_10)//generate shockwave$(13_10)if (sprite_index == sp_gobAtt && image_index >= 6 && !wave){$(13_10)	//shockwave here	$(13_10)	wave = true;$(13_10)	var rota = 0;$(13_10)	if (abs(PLAYER.x-x) >= abs(PLAYER.y-y)){$(13_10)		//means that left or right is the direction$(13_10)		rota = 90 - (90*dirX);$(13_10)	}$(13_10)	else{$(13_10)		rota += 90*dirY; 	$(13_10)	}$(13_10)	var wav = instance_create_layer(self.x,self.y,self.layer,ob_shockwave);$(13_10)	$(13_10)	with(wav){$(13_10)		image_angle = rota;	$(13_10)		dirXx = dirX;$(13_10)		dirYy = dirY;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}"

if currHP <= 0{
	audio_stop_all();
	audio_play_sound(sd_enemyDie, 1, false);
	audio_play_sound(sd_Dung, 2, true);
	instance_create_layer(self.x,self.y, self.layer, ob_chest);
	
	instance_destroy();
}


//movement here
var dirX = sign(PLAYER.x - x);
var dirY = -sign(PLAYER.y - y);	

if (sprite_index == sp_gobMove){
	moveH = dirX;
	moveV = dirY;
		
	sc_Move();
	if (irandom(100) > 97){
		sprite_index = sp_gobAtt;
	}
}
if (place_meeting(x, y, ob_protag2)){
		//set player invuln time and kb
		PLAYER.kb = [dirX*2*PLAYER.spd,dirY*2*PLAYER.spd];
		kb = [-dirX*3*spd,-dirY*3*spd];
		if (!PLAYER.invuln){
			PLAYER.alarm[1] = 25;
			PLAYER.invuln = true;
			PLAYER.currHP -= att;
		}
	}
	
if (place_meeting(x,y,ob_pBullet)){
		oth = instance_place(x,y,ob_pBullet)
		if (ds_list_find_index(oth.expended, id) == -1){
			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]
			currHP -= oth.dam*PLAYER.att*4;
			ds_list_add(oth.expended, id);
		}
		
	}



//generate shockwave
if (sprite_index == sp_gobAtt && image_index >= 6 && !wave){
	//shockwave here	
	wave = true;
	var rota = 0;
	if (abs(PLAYER.x-x) >= abs(PLAYER.y-y)){
		//means that left or right is the direction
		rota = 90 - (90*dirX);
	}
	else{
		rota += 90*dirY; 	
	}
	var wav = instance_create_layer(self.x,self.y,self.layer,ob_shockwave);
	
	with(wav){
		image_angle = rota;	
		dirXx = dirX;
		dirYy = dirY;
	}
	
	
}