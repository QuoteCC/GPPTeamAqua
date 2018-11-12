/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4672789D
/// @DnDArgument : "code" "//Movement$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_up = keyboard_check(vk_up);$(13_10)key_down = keyboard_check(vk_down);$(13_10)$(13_10)moveH = key_right-key_left;$(13_10)moveV = key_up - key_down;$(13_10)/*hsp = moveH*spd;$(13_10)vsp = moveV*spd;$(13_10)$(13_10)x += hsp;$(13_10)y -= vsp;$(13_10)$(13_10)direction = clamp(-moveH*180, 0, 180) + (moveV*90); $(13_10)$(13_10)$(13_10)$(13_10)//KB$(13_10)$(13_10)//Final Checks$(13_10)x = clamp(x,32,room_width-32);$(13_10)y = clamp(y,32,room_width-32);*/$(13_10)sc_Move();"
//Movement
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

moveH = key_right-key_left;
moveV = key_up - key_down;
/*hsp = moveH*spd;
vsp = moveV*spd;

x += hsp;
y -= vsp;

direction = clamp(-moveH*180, 0, 180) + (moveV*90); 



//KB

//Final Checks
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_width-32);*/
sc_Move();/**/