/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 185CE4EA
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)spd = 3;$(13_10)kb = [0,0];$(13_10)powerUp = 0;$(13_10)$(13_10)tilemap = layer_tilemap_get_id("collision");$(13_10)sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)$(13_10)$(13_10)$(13_10)currHP = 100;$(13_10)hp = currHP;$(13_10)$(13_10)def = 0;$(13_10)att = 5;$(13_10)$(13_10)act = false;"
hsp = 0;
vsp = 0;
spd = 3;
kb = [0,0];
powerUp = 0;

tilemap = layer_tilemap_get_id("collision");
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);



currHP = 100;
hp = currHP;

def = 0;
att = 5;

act = false;