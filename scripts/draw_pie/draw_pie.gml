/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2909FF6F
/// @DnDArgument : "code" "/// draw_pie(x ,y ,value, max, colour, radius, transparency)$(13_10)$(13_10)if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0$(13_10)    var i, len, tx, ty, val;$(13_10)    $(13_10)    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here$(13_10)    var sizeofsection = 360/numberofsections$(13_10)    $(13_10)    val = (argument2/argument3) * numberofsections $(13_10)    $(13_10)    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides $(13_10)    $(13_10)        draw_set_colour(argument4);$(13_10)        draw_set_alpha(argument6);$(13_10)        $(13_10)        draw_primitive_begin(pr_trianglefan);$(13_10)        draw_vertex(argument0, argument1);$(13_10)        $(13_10)        for(i=0; i<=val; i++) {$(13_10)            len = (i*sizeofsection)+90; // the 90 here is the starting angle$(13_10)            tx = lengthdir_x(argument5, len);$(13_10)            ty = lengthdir_y(argument5, len);$(13_10)            draw_vertex(argument0+tx, argument1+ty);$(13_10)        }$(13_10)        draw_primitive_end();$(13_10)        $(13_10)    }$(13_10)    draw_set_alpha(1);$(13_10)}"
/// draw_pie(x ,y ,value, max, colour, radius, transparency)

if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(argument4);
        draw_set_alpha(argument6);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument0, argument1);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(argument5, len);
            ty = lengthdir_y(argument5, len);
            draw_vertex(argument0+tx, argument1+ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
}