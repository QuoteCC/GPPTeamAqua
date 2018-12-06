/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C688B42
/// @DnDArgument : "code" "hsp = 0; //horizontal and vertical required for move script$(13_10)vsp = 0;$(13_10)recH = 1;$(13_10)recV = 1;$(13_10)$(13_10)$(13_10)kyCT = 0;$(13_10)$(13_10)kb = [0,0]; //var for handling knockback (x,y)$(13_10)$(13_10)$(13_10)powerUp = 1;$(13_10)tilemap = layer_tilemap_get_id("collision");$(13_10)sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);$(13_10)sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);$(13_10)$(13_10)//establish stats based on clothes here$(13_10)weapon = global.bpI[0]; //set weapon based on shirt$(13_10)dash = global.bpI[2]; //set dash type based on shoes$(13_10)$(13_10)hp = 100;$(13_10)def = 2;$(13_10)att = 1.5;$(13_10)spd = 8;$(13_10)$(13_10)switch(global.bpI[1]){ //stat mods based on Pants$(13_10)	case 1: //overalls -> High health and def, low speed$(13_10)		hp *= 1.5;$(13_10)		def = 3;$(13_10)		att = 1$(13_10)	break;$(13_10)	case 2: //red -> High attack$(13_10)		att = 2.5;$(13_10)		def = 1;$(13_10)	break;$(13_10)	case 3: //skirt$(13_10)		spd = 12;$(13_10)		hp  *= .75;$(13_10)	break;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)hp = 100;$(13_10)def = 0;$(13_10)att = 1;$(13_10)currCharge = 100;$(13_10)$(13_10)invuln = false;$(13_10)toggle = false;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
hsp = 0; //horizontal and vertical required for move script
vsp = 0;
recH = 1;
recV = 1;


kyCT = 0;

kb = [0,0]; //var for handling knockback (x,y)


powerUp = 1;
tilemap = layer_tilemap_get_id("collision");
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);

//establish stats based on clothes here
weapon = global.bpI[0]; //set weapon based on shirt
dash = global.bpI[2]; //set dash type based on shoes

hp = 100;
def = 2;
att = 1.5;
spd = 8;

switch(global.bpI[1]){ //stat mods based on Pants
	case 1: //overalls -> High health and def, low speed
		hp *= 1.5;
		def = 3;
		att = 1
	break;
	case 2: //red -> High attack
		att = 2.5;
		def = 1;
	break;
	case 3: //skirt
		spd = 12;
		hp  *= .75;
	break;
}







hp = 100;
def = 0;
att = 1;
currCharge = 100;

invuln = false;
toggle = false;