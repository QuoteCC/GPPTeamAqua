/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4672789D
/// @DnDArgument : "code" "//Movement$(13_10)if currHP <= 0{$(13_10)	global.won = false;$(13_10)	room_goto(GameOver);$(13_10)}$(13_10)else if powerUp >= 5{$(13_10)	global.won = true;$(13_10)	room_goto(GameOver);$(13_10)}$(13_10)$(13_10)$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_up = keyboard_check(vk_up);$(13_10)key_down = keyboard_check(vk_down);$(13_10)$(13_10)//Shooting$(13_10)key_w = keyboard_check(ord("W"));$(13_10)key_a = keyboard_check(ord("A"));$(13_10)key_s = keyboard_check(ord("S"));$(13_10)key_d = keyboard_check(ord("D"));$(13_10)$(13_10)$(13_10)$(13_10)shootH = key_right-key_left;$(13_10)shootV = key_up - key_down;$(13_10)$(13_10)moveH = key_d - key_a;$(13_10)moveV = key_w - key_s;$(13_10)$(13_10)if (shootH != 0 || shootV !=0){$(13_10)	//shoot in chosen direction$(13_10)	sc_ShootPrimary();$(13_10)}$(13_10)$(13_10)//modifier key-> dash, tp, roll$(13_10)if (keyboard_key_press(vk_space)){$(13_10)	sc_MoveS();$(13_10)}$(13_10)$(13_10)$(13_10)if (moveH > 0){$(13_10)	if (sprite_index != sp_wlkR){$(13_10)		sprite_index = sp_wlkR;	$(13_10)	}$(13_10)}$(13_10)else if (moveH < 0){$(13_10)$(13_10)	if (sprite_index != sp_wlkL){$(13_10)		sprite_index = sp_wlkL;	$(13_10)	}$(13_10)}$(13_10)else if (moveV < 0){$(13_10)	//up$(13_10)	if (sprite_index != sp_wlkF){$(13_10)		sprite_index = sp_wlkF;	$(13_10)	}$(13_10)}$(13_10)else if (moveV > 0){$(13_10)	//down$(13_10)	if (sprite_index != sp_wlkB){$(13_10)		sprite_index = sp_wlkB;$(13_10)	}$(13_10)}$(13_10)else{$(13_10)	if (sprite_index != sp_idle){$(13_10)		sprite_index = sp_idle;	$(13_10)	}$(13_10)}$(13_10)$(13_10)//invuln calculations$(13_10)if (invuln){$(13_10)	if (alarm[1] == -1){$(13_10)		// no more invuln$(13_10)		invuln = false;$(13_10)	}$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)sc_Move();$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)/*hsp = moveH*spd;$(13_10)vsp = moveV*spd;$(13_10)$(13_10)x += hsp;$(13_10)y -= vsp;$(13_10)$(13_10)direction = clamp(-moveH*180, 0, 180) + (moveV*90); $(13_10)$(13_10)//Final Checks$(13_10)x = clamp(x,32,room_width-32);$(13_10)y = clamp(y,32,room_width-32);*/$(13_10)$(13_10)//knockback$(13_10)$(13_10)$(13_10)$(13_10)"
//Movement
if currHP <= 0{
	global.won = false;
	room_goto(GameOver);
}
else if powerUp >= 5{
	global.won = true;
	room_goto(GameOver);
}


key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

//Shooting
key_w = keyboard_check(ord("W"));
key_a = keyboard_check(ord("A"));
key_s = keyboard_check(ord("S"));
key_d = keyboard_check(ord("D"));



shootH = key_right-key_left;
shootV = key_up - key_down;

moveH = key_d - key_a;
moveV = key_w - key_s;

if (shootH != 0 || shootV !=0){
	//shoot in chosen direction
	sc_ShootPrimary();
}

//modifier key-> dash, tp, roll
if (keyboard_key_press(vk_space)){
	sc_MoveS();
}


if (moveH > 0){
	if (sprite_index != sp_wlkR){
		sprite_index = sp_wlkR;	
	}
}
else if (moveH < 0){

	if (sprite_index != sp_wlkL){
		sprite_index = sp_wlkL;	
	}
}
else if (moveV < 0){
	//up
	if (sprite_index != sp_wlkF){
		sprite_index = sp_wlkF;	
	}
}
else if (moveV > 0){
	//down
	if (sprite_index != sp_wlkB){
		sprite_index = sp_wlkB;
	}
}
else{
	if (sprite_index != sp_idle){
		sprite_index = sp_idle;	
	}
}

//invuln calculations
if (invuln){
	if (alarm[1] == -1){
		// no more invuln
		invuln = false;
	}
	
	
}

sc_Move();







/*hsp = moveH*spd;
vsp = moveV*spd;

x += hsp;
y -= vsp;

direction = clamp(-moveH*180, 0, 180) + (moveV*90); 

//Final Checks
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_width-32);*/

//knockback



/**/