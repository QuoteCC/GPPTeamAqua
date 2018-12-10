/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F36DD4D
/// @DnDArgument : "code" "if global.won{$(13_10)	draw_set_font(f_fashion);$(13_10)	draw_set_color($AA3D9F);$(13_10)}$(13_10)else{$(13_10)	draw_set_font(f_disaster);$(13_10)	draw_set_color($AA3D9F);$(13_10)}$(13_10)draw_text((room_width/2) - (string_width(txt)/2), (room_height/6), txt);"
if global.won{
	draw_set_font(f_fashion);
	draw_set_color($AA3D9F);
}
else{
	draw_set_font(f_disaster);
	draw_set_color($AA3D9F);
}
draw_text((room_width/2) - (string_width(txt)/2), (room_height/6), txt);