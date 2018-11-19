/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FCD2006
/// @DnDArgument : "code" "$(13_10)//why is it so dumb to use multiple fonts $(13_10)draw_set_font(f_fashion);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_color(c_fuchsia);$(13_10)draw_text_transformed(room_width/4+25, room_height/4, "Fashion!", 2, 2, 0);$(13_10)$(13_10)draw_set_font(f_disaster);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_color(c_black);$(13_10)draw_text_transformed((room_width/4)*3 -45, room_height/4, "Disiaster", 2, 2, 0);$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_font(f_genText);$(13_10)draw_set_color(c_black);$(13_10)$(13_10)//var menu_item;$(13_10)$(13_10)for (var menu_item = 0; menu_item < array_length_1d(cPoI); menu_item++){$(13_10)	draw_text(x + space, y + vOff + (menu_item * 150), cPoI[menu_item]);$(13_10)}$(13_10)$(13_10)$(13_10)draw_sprite(sp_pointer, 0, x + 280, y + vOff + (cPos * 150));"

//why is it so dumb to use multiple fonts 
draw_set_font(f_fashion);
draw_set_halign(fa_center);
draw_set_color(c_fuchsia);
draw_text_transformed(room_width/4+25, room_height/4, "Fashion!", 2, 2, 0);

draw_set_font(f_disaster);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text_transformed((room_width/4)*3 -45, room_height/4, "Disiaster", 2, 2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(f_genText);
draw_set_color(c_black);

//var menu_item;

for (var menu_item = 0; menu_item < array_length_1d(cPoI); menu_item++){
	draw_text(x + space, y + vOff + (menu_item * 150), cPoI[menu_item]);
}


draw_sprite(sp_pointer, 0, x + 280, y + vOff + (cPos * 150));