/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A7B4FB1
/// @DnDArgument : "code" "$(13_10)//scr_screen_capture();$(13_10)$(13_10)//variables$(13_10)var ret = -1;$(13_10)var sfc_width = surface_get_width(application_surface);$(13_10)var sfc_height = surface_get_height(application_surface);$(13_10)$(13_10)//create a drawing surface$(13_10)var sfc = surface_create(sfc_width,sfc_height);$(13_10)surface_set_target(sfc);$(13_10)$(13_10)//clear the surface you created just in case$(13_10)draw_set_colour_write_enable(0, 0, 0, 1);$(13_10)draw_clear(c_black);$(13_10)draw_rectangle_colour(0, 0, sfc_width, sfc_height, c_black, c_black, c_black, c_black, 0);$(13_10)draw_set_colour_write_enable(1, 1, 1, 0);$(13_10)$(13_10)//capture screen on the surface$(13_10)draw_surface(application_surface, 0, 0);$(13_10)ret = background_create_from_surface(sfc,0,0,sfc_width,sfc_height,false,false); $(13_10)//if it doesn't work with backgrounds, try creating a sprite from the surface?$(13_10)//this might be very heavy though$(13_10)$(13_10)//finalise and clear surface from memory$(13_10)surface_reset_target();$(13_10)draw_set_colour_write_enable(1, 1, 1, 1);$(13_10)surface_free(sfc);$(13_10)return ret;$(13_10)$(13_10)"

//scr_screen_capture();

//variables
var ret = -1;
var sfc_width = surface_get_width(application_surface);
var sfc_height = surface_get_height(application_surface);

//create a drawing surface
var sfc = surface_create(sfc_width,sfc_height);
surface_set_target(sfc);

//clear the surface you created just in case
draw_set_colour_write_enable(0, 0, 0, 1);
draw_clear(c_black);
draw_rectangle_colour(0, 0, sfc_width, sfc_height, c_black, c_black, c_black, c_black, 0);
draw_set_colour_write_enable(1, 1, 1, 0);

//capture screen on the surface
draw_surface(application_surface, 0, 0);
ret = background_create_from_surface(sfc,0,0,sfc_width,sfc_height,false,false); 
//if it doesn't work with backgrounds, try creating a sprite from the surface?
//this might be very heavy though

//finalise and clear surface from memory
surface_reset_target();
draw_set_colour_write_enable(1, 1, 1, 1);
surface_free(sfc);
return ret;