/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 094584B6
/// @DnDArgument : "code" "if (pause){$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_alpha(0.60);$(13_10)	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0], 0);$(13_10)	$(13_10)	draw_set_font(f_fashion);$(13_10)	draw_set_color(c_white);$(13_10)	draw_set_alpha(1);$(13_10)	draw_text((view_wport[0]-96)/2 - 15, (view_hport[0]-96)/2 - 100 ,"Paused");$(13_10)	$(13_10)	//draw_set_font(f_fashionSml);$(13_10)	for (var menu_item = 0; menu_item < array_length_1d(opt); menu_item++){$(13_10)		draw_text(x + space, y + vOff + (menu_item * 150), opt[menu_item]);$(13_10)	}$(13_10)$(13_10)$(13_10)	draw_sprite(sp_pointer, 0, x + 280, y + vOff + (pos * 150));$(13_10)}"
if (pause){
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0], 0);
	
	draw_set_font(f_fashion);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]-96)/2 - 15, (view_hport[0]-96)/2 - 100 ,"Paused");
	
	//draw_set_font(f_fashionSml);
	for (var menu_item = 0; menu_item < array_length_1d(opt); menu_item++){
		draw_text(x + space, y + vOff + (menu_item * 150), opt[menu_item]);
	}


	draw_sprite(sp_pointer, 0, x + 280, y + vOff + (pos * 150));
}