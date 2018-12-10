/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39719076
/// @DnDArgument : "code" "$(13_10)//movement here$(13_10)if (sprite_index == gobMove){$(13_10)	var dirX = sign(PLAYER.x - x);$(13_10)	var dirY = -sign(PLAYER.y - y);	$(13_10)	$(13_10)	moveH = dirX;$(13_10)	moveV = dirY;$(13_10)		$(13_10)	sc_Move();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//generate shockwave$(13_10)if (sprite_index == sp_gobAtt && image_index == 7){$(13_10)	//shockwave here	$(13_10)}"

//movement here
if (sprite_index == gobMove){
	var dirX = sign(PLAYER.x - x);
	var dirY = -sign(PLAYER.y - y);	
	
	moveH = dirX;
	moveV = dirY;
		
	sc_Move();
}



//generate shockwave
if (sprite_index == sp_gobAtt && image_index == 7){
	//shockwave here	
}