/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70019993
/// @DnDArgument : "code" "key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)move = key_right - key_left;$(13_10)hsp = move * walksp;$(13_10)$(13_10)if (place_meeting(x,y+1,ob_block) && key_jump) {$(13_10)	vsp = -7;$(13_10)}$(13_10)$(13_10)if (place_meeting(x+hsp,y,ob_block)){$(13_10)	while(!place_meeting(x+sign(hsp), y, ob_block)){$(13_10)		x = x+sign(hsp);	$(13_10)	}$(13_10)}$(13_10)else{$(13_10)	x = x+ hsp;$(13_10)	if (sprite_index != sp_jumpyGuyL && sign(hsp) < 0){$(13_10)		sprite_index = sp_jumpyGuyL;	$(13_10)	}$(13_10)	else if(sprite_index != sp_jumpyGuyR && sign(hsp) > 0){$(13_10)		sprite_index = sp_jumpyGuyR;	$(13_10)	}$(13_10)	if (hsp == 0 ){$(13_10)		image_index = 0;	$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y+vsp, ob_block)){$(13_10)	while(!place_meeting(x,y+sign(vsp),ob_block)){$(13_10)		y = y+ sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)else{$(13_10)	y = y+vsp;$(13_10)	vsp = vsp+grv;$(13_10)}$(13_10)	"
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

move = key_right - key_left;
hsp = move * walksp;

if (place_meeting(x,y+1,ob_block) && key_jump) {
	vsp = -7;
}

if (place_meeting(x+hsp,y,ob_block)){
	while(!place_meeting(x+sign(hsp), y, ob_block)){
		x = x+sign(hsp);	
	}
}
else{
	x = x+ hsp;
	if (sprite_index != sp_jumpyGuyL && sign(hsp) < 0){
		sprite_index = sp_jumpyGuyL;	
	}
	else if(sprite_index != sp_jumpyGuyR && sign(hsp) > 0){
		sprite_index = sp_jumpyGuyR;	
	}
	if (hsp == 0 ){
		image_index = 0;	
	}
	
}

if (place_meeting(x,y+vsp, ob_block)){
	while(!place_meeting(x,y+sign(vsp),ob_block)){
		y = y+ sign(vsp);
	}
	vsp = 0;
}
else{
	y = y+vsp;
	vsp = vsp+grv;
}