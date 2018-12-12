/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B4A8BAC
/// @DnDArgument : "code" "expended = ds_list_create(); //to keep track of whether has hit an enemy$(13_10)hsp = 0;$(13_10)vsp = 0;$(13_10)dam = 24* PLAYER.powerUp;$(13_10)moveH = 0;$(13_10)moveV = 0;$(13_10)$(13_10)spd = 10;$(13_10)$(13_10)image_xscale = .5 + (.5* PLAYER.powerUp);$(13_10)image_yscale = .5 + (.5* PLAYER.powerUp);"
expended = ds_list_create(); //to keep track of whether has hit an enemy
hsp = 0;
vsp = 0;
dam = 24* PLAYER.powerUp;
moveH = 0;
moveV = 0;

spd = 10;

image_xscale = .5 + (.5* PLAYER.powerUp);
image_yscale = .5 + (.5* PLAYER.powerUp);