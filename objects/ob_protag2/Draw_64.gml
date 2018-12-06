/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C8A349F
/// @DnDArgument : "code" "var xPos = 15; //get a little seperation$(13_10)var yPos = 20;$(13_10)var off = 0;$(13_10)$(13_10)$(13_10)if (x< 250 && y< 200){$(13_10)	alph -= .1;$(13_10)}$(13_10)else{$(13_10)	alph += .1;	$(13_10)}$(13_10)alph = clamp(alph,.25,1);$(13_10)draw_set_alpha(alph);$(13_10)$(13_10)draw_set_color(c_gray);$(13_10)draw_roundrect(xPos-10, yPos-5, xPos + 200, yPos + 150, false);$(13_10)yPos+=20;$(13_10)draw_set_color(c_black);$(13_10)draw_set_font(f_genText);$(13_10)draw_text(xPos,yPos, class);$(13_10)yPos += string_height(class) + 5;$(13_10)draw_text(xPos, yPos, "HP: ");$(13_10)off = 90+string_width("HP: ");$(13_10)draw_healthbar(xPos+5+string_width("HP: "),yPos - 3, xPos+85 + string_width("HP: "), yPos+15, hp, c_dkgray,c_red, c_green,0,true,true);//HP$(13_10)draw_sprite(sp_clothesPickedUp, powerUp-1 + (4*(offset-1)), xPos+off+5, yPos);$(13_10)$(13_10)yPos += 25;$(13_10)draw_text(xPos,yPos,"SP: ");$(13_10)draw_healthbar(xPos+8+string_width("SP: "),yPos - 3, xPos+85 + string_width("SP: "), yPos+15, currCharge, c_dkgray,c_teal, c_aqua,0,true,true); //Resource$(13_10)$(13_10)$(13_10)$(13_10)"
var xPos = 15; //get a little seperation
var yPos = 20;
var off = 0;


if (x< 250 && y< 200){
	alph -= .1;
}
else{
	alph += .1;	
}
alph = clamp(alph,.25,1);
draw_set_alpha(alph);

draw_set_color(c_gray);
draw_roundrect(xPos-10, yPos-5, xPos + 200, yPos + 150, false);
yPos+=20;
draw_set_color(c_black);
draw_set_font(f_genText);
draw_text(xPos,yPos, class);
yPos += string_height(class) + 5;
draw_text(xPos, yPos, "HP: ");
off = 90+string_width("HP: ");
draw_healthbar(xPos+5+string_width("HP: "),yPos - 3, xPos+85 + string_width("HP: "), yPos+15, hp, c_dkgray,c_red, c_green,0,true,true);//HP
draw_sprite(sp_clothesPickedUp, powerUp-1 + (4*(offset-1)), xPos+off+5, yPos);

yPos += 25;
draw_text(xPos,yPos,"SP: ");
draw_healthbar(xPos+8+string_width("SP: "),yPos - 3, xPos+85 + string_width("SP: "), yPos+15, currCharge, c_dkgray,c_teal, c_aqua,0,true,true); //Resource