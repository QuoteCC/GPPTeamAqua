/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C8A349F
/// @DnDArgument : "code" "var xPos = view_xview[0];$(13_10)var yPos = view_yview[0];$(13_10)$(13_10)draw_text(xPos,yPos,"Current Health:" + string(hp));$(13_10)draw_text(xPos,yPos+15,"Collision Down:"+ string(colDown));$(13_10)draw_text(xPos,yPos+30,"Collision UP: " + string(colUP));"
var xPos = view_xview[0];
var yPos = view_yview[0];

draw_text(xPos,yPos,"Current Health:" + string(hp));
draw_text(xPos,yPos+15,"Collision Down:"+ string(colDown));
draw_text(xPos,yPos+30,"Collision UP: " + string(colUP));