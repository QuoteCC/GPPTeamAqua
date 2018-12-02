/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C688B42
/// @DnDArgument : "code" "hsp = 0; //horizontal and vertical required for move script$(13_10)vsp = 0;$(13_10)recH = 1;$(13_10)recV = 1;$(13_10)spd = 6;$(13_10)$(13_10)kyCT = 0;$(13_10)$(13_10)kb = [0,0]; //var for handling knockback (x,y)$(13_10)$(13_10)$(13_10)powerUp = 1;$(13_10)tilemap = layer_tilemap_get_id("collision");$(13_10)sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)$(13_10)hp = 100;$(13_10)def = 0;$(13_10)att = 1;$(13_10)currCharge = 100;$(13_10)$(13_10)invuln = false;$(13_10)toggle = false;$(13_10)$(13_10)$(13_10)$(13_10)colUP = false;$(13_10)colDown = false;$(13_10)$(13_10)"
hsp = 0; //horizontal and vertical required for move script
vsp = 0;
recH = 1;
recV = 1;
spd = 6;

kyCT = 0;

kb = [0,0]; //var for handling knockback (x,y)


powerUp = 1;
tilemap = layer_tilemap_get_id("collision");
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);

hp = 100;
def = 0;
att = 1;
currCharge = 100;

invuln = false;
toggle = false;



colUP = false;
colDown = false;