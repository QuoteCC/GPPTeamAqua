/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78152A88
/// @DnDArgument : "code" "hsp = moveH*spd;$(13_10)vsp = moveV*spd;$(13_10)$(13_10)$(13_10)//collision check$(13_10)y += vsp;$(13_10)x += hsp;$(13_10)var t1 = tilemap_get_at_pixel(tilemap, x, y);$(13_10)$(13_10)if t1 != 0 {$(13_10)		instance_destroy();$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
hsp = moveH*spd;
vsp = moveV*spd;


//collision check
y += vsp;
x += hsp;
var t1 = tilemap_get_at_pixel(tilemap, x, y);

if t1 != 0 {
		instance_destroy();
}