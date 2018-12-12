/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34C7DEFF
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)spd = 4;$(13_10)kb = [0,0];$(13_10)wave = false;$(13_10)powerUp = 0;$(13_10)$(13_10)name = "Sharktopus";$(13_10)$(13_10)$(13_10)tilemap = layer_tilemap_get_id("Wall");$(13_10)sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)$(13_10)pool = 0;$(13_10)$(13_10)$(13_10)currHP = 500;$(13_10)hp = currHP;$(13_10)$(13_10)def = 0;$(13_10)att = 10;$(13_10)$(13_10)act = false;$(13_10)$(13_10)aCycle = [4943,5299, 5662,6020,6290,6518];$(13_10)aCycle2 = [8000,7744,7437,7034,6646,6327];$(13_10)bCycle = [4932,5443,6020,6493,5744,5719];$(13_10)bCycle2 = [7031,7031, 7031, 7031, 6673, 7608];$(13_10)cCycle = [4921,5208,5533,5913,6328,6739];$(13_10)cCycle2 = [6370, 6698, 6999, 7331, 7582, 7864];$(13_10)dCycle = [5194,5696,5727,5763,5761,6405];$(13_10)dCycle2 = [7102, 6350, 6784, 7424, 6405, 7087];$(13_10)alarm[0] = room_speed*3;$(13_10)"
hsp = 0;
vsp = 0;
spd = 4;
kb = [0,0];
wave = false;
powerUp = 0;

name = "Sharktopus";


tilemap = layer_tilemap_get_id("Wall");
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);

pool = 0;


currHP = 500;
hp = currHP;

def = 0;
att = 10;

act = false;

aCycle = [4943,5299, 5662,6020,6290,6518];
aCycle2 = [8000,7744,7437,7034,6646,6327];
bCycle = [4932,5443,6020,6493,5744,5719];
bCycle2 = [7031,7031, 7031, 7031, 6673, 7608];
cCycle = [4921,5208,5533,5913,6328,6739];
cCycle2 = [6370, 6698, 6999, 7331, 7582, 7864];
dCycle = [5194,5696,5727,5763,5761,6405];
dCycle2 = [7102, 6350, 6784, 7424, 6405, 7087];
alarm[0] = room_speed*3;