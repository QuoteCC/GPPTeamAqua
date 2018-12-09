/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 100195F4
/// @DnDArgument : "code" "sc_MoveB();$(13_10)if life > 3{$(13_10)	instance_destroy();	$(13_10)}$(13_10)if(ds_list_size(expended) > 0){$(13_10)	instance_destroy();	$(13_10)}$(13_10)life++;"
sc_MoveB();
if life > 3{
	instance_destroy();	
}
if(ds_list_size(expended) > 0){
	instance_destroy();	
}
life++;