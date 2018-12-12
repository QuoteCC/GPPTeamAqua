/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39719076
/// @DnDArgument : "code" "$(13_10)if currHP <= 0{$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(sd_enemyDie, 1, false);$(13_10)	audio_play_sound(sd_Dung, 2, true);$(13_10)	instance_create_layer(self.x,self.y, self.layer, ob_chest);$(13_10)	$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)$(13_10)//movement here$(13_10)$(13_10)	$(13_10)if (place_meeting(x,y,ob_pBullet)){$(13_10)		oth = instance_place(x,y,ob_pBullet)$(13_10)		if (ds_list_find_index(oth.expended, id) == -1){$(13_10)			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]$(13_10)			currHP -= oth.dam*PLAYER.att*4;$(13_10)			ds_list_add(oth.expended, id);$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	$(13_10)//Rotate through spawn pools$(13_10)if (alarm[0] == -1){$(13_10)	var pls; //WHY AREN"T THERE 3D ARRAYS THIS IS ACTUALLY DUMB$(13_10)	var dumb; // the fact that I have to jank out even a basic 2d array assignment is utterly ridiculous$(13_10)$(13_10)	/*$(13_10)	RANT$(13_10)	The fact that I have to jank out a 3d array, and then to make matters even more ridiculous jank out a 2D ARRAY (just want a list of points)$(13_10)	is completely and utterly dumb.$(13_10)	This is a game engine, HOW DOES IT NOT HAVE SOME KIND OF POINT OBJECT.  I JUST WANT TO HAVE A LIST OF POINTS$(13_10)	(and a list of lists of points, but that's easier to replicate)$(13_10)	$(13_10)	END RANT$(13_10)	*/$(13_10)$(13_10)	switch (pool){$(13_10)		case 0:$(13_10)		pls = aCycle;$(13_10)		dumb = aCycle2;$(13_10)		break;$(13_10)		case 1:$(13_10)		pls = bCycle;$(13_10)		dumb = bCycle2;$(13_10)		break;$(13_10)		case 2:$(13_10)		pls = cCycle;$(13_10)		dumb = cCycle2;$(13_10)		break;$(13_10)		case 3:$(13_10)		pls = dCycle;$(13_10)		dumb = dCycle2;$(13_10)		break;$(13_10)		$(13_10)	}$(13_10)	for (var i = 0; i < 6; i++){$(13_10)		instance_create_layer(pls[i], dumb[i], self.layer, ob_acidPool);	$(13_10)	}$(13_10)	pool++;$(13_10)	if pool > 3{$(13_10)		pool = 0;	$(13_10)	}$(13_10)	alarm[0] = (room_speed*3)-5;$(13_10)}$(13_10)$(13_10)"

if currHP <= 0{
	audio_stop_all();
	audio_play_sound(sd_enemyDie, 1, false);
	audio_play_sound(sd_Dung, 2, true);
	instance_create_layer(self.x,self.y, self.layer, ob_chest);
	
	instance_destroy();
}


//movement here

	
if (place_meeting(x,y,ob_pBullet)){
		oth = instance_place(x,y,ob_pBullet)
		if (ds_list_find_index(oth.expended, id) == -1){
			kb = [oth.moveH*(2*oth.dam),oth.moveV*(2*oth.dam)]
			currHP -= oth.dam*PLAYER.att*4;
			ds_list_add(oth.expended, id);
		}
		
	}
	
//Rotate through spawn pools
if (alarm[0] == -1){
	var pls; //WHY AREN"T THERE 3D ARRAYS THIS IS ACTUALLY DUMB
	var dumb; // the fact that I have to jank out even a basic 2d array assignment is utterly ridiculous

	/*
	RANT
	The fact that I have to jank out a 3d array, and then to make matters even more ridiculous jank out a 2D ARRAY (just want a list of points)
	is completely and utterly dumb.
	This is a game engine, HOW DOES IT NOT HAVE SOME KIND OF POINT OBJECT.  I JUST WANT TO HAVE A LIST OF POINTS
	(and a list of lists of points, but that's easier to replicate)
	
	END RANT
	*/

	switch (pool){
		case 0:
		pls = aCycle;
		dumb = aCycle2;
		break;
		case 1:
		pls = bCycle;
		dumb = bCycle2;
		break;
		case 2:
		pls = cCycle;
		dumb = cCycle2;
		break;
		case 3:
		pls = dCycle;
		dumb = dCycle2;
		break;
		
	}
	for (var i = 0; i < 6; i++){
		instance_create_layer(pls[i], dumb[i], self.layer, ob_acidPool);	
	}
	pool++;
	if pool > 3{
		pool = 0;	
	}
	alarm[0] = (room_speed*3)-5;
}

/**/