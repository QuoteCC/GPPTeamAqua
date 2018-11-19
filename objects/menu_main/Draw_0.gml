/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FCD2006
/// @DnDArgument : "code" "draw_set_font(genStuff);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_color(c_aqua);$(13_10)draw_text_transformed(room_width/2, room_height/4, "Fashion Disaster!", 2,2, 0);$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_font(genStuff);$(13_10)draw_set_color(c_black);$(13_10)$(13_10)//var menu_item;$(13_10)$(13_10)for (var menu_item = 0; menu_item < array_length_1d(cPoI); menu_item++){$(13_10)	draw_text(x + 100 + space, y + vOff + (menu_item * space), cPoI[menu_item]);$(13_10)}$(13_10)$(13_10)$(13_10)draw_sprite(sp_pointer, 0, x + 80, y + vOff + (cPos * space));"
draw_set_font(genStuff);
draw_set_halign(fa_center);
draw_set_color(c_aqua);
draw_text_transformed(room_width/2, room_height/4, "Fashion Disaster!", 2,2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(genStuff);
draw_set_color(c_black);

//var menu_item;

for (var menu_item = 0; menu_item < array_length_1d(cPoI); menu_item++){
	draw_text(x + 100 + space, y + vOff + (menu_item * space), cPoI[menu_item]);
}


draw_sprite(sp_pointer, 0, x + 80, y + vOff + (cPos * space));