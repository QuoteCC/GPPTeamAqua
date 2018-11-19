/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C4B03C1
/// @DnDArgument : "code" "if (!invuln){$(13_10)	draw_self();$(13_10)}$(13_10)else{$(13_10)	if (toggle){$(13_10)		shader_set(sh_white);$(13_10)		draw_self();$(13_10)		shader_reset();$(13_10)	}$(13_10)	else{$(13_10)		draw_self();$(13_10)	}$(13_10)	toggle = !toggle;$(13_10)}$(13_10)"
if (!invuln){
	draw_self();
}
else{
	if (toggle){
		shader_set(sh_white);
		draw_self();
		shader_reset();
	}
	else{
		draw_self();
	}
	toggle = !toggle;
}