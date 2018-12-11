/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34C7DEFF
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)spd = 4;$(13_10)kb = [0,0];$(13_10)wave = false;$(13_10)powerUp = 0;$(13_10)$(13_10)name = "Goblin Leader";$(13_10)$(13_10)$(13_10)tilemap = layer_tilemap_get_id("Wall");$(13_10)sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)$(13_10)$(13_10)$(13_10)currHP = 500;$(13_10)hp = currHP;$(13_10)$(13_10)def = 0;$(13_10)att = 10;$(13_10)$(13_10)act = false;"
hsp = 0;
vsp = 0;
spd = 4;
kb = [0,0];
wave = false;
powerUp = 0;

name = "Goblin Leader";


tilemap = layer_tilemap_get_id("Wall");
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);



currHP = 500;
hp = currHP;

def = 0;
att = 10;

act = false;