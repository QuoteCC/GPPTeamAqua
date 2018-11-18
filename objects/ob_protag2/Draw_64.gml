/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C8A349F
/// @DnDArgument : "code" "var xPos = view_xview[0];$(13_10)var yPos = view_yview[0];$(13_10)$(13_10)draw_healthbar(xPos,yPos, xPos+80, yPos+10, hp, c_dkgray,c_red, c_green,0,true,true);//HP$(13_10)draw_healthbar(xPos,yPos+15, xPos+80, yPos+25, currCharge, c_dkgray,c_red, c_green,0,true,true); //Resource$(13_10)"
var xPos = view_xview[0];
var yPos = view_yview[0];

draw_healthbar(xPos,yPos, xPos+80, yPos+10, hp, c_dkgray,c_red, c_green,0,true,true);//HP
draw_healthbar(xPos,yPos+15, xPos+80, yPos+25, currCharge, c_dkgray,c_red, c_green,0,true,true); //Resource