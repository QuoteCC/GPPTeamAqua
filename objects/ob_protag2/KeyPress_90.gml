/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0F8C72F2
/// @DnDDisabled : 1
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-32"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "ob_bullet"
/// @DnDSaveInfo : "objectid" "889f39ab-6518-4888-8c77-58061ea0acf4"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 75B50D0C
/// @DnDArgument : "code" "if (alarm[0] = -1){$(13_10)	alarm[0] = 8;$(13_10)	switch(powerUp){$(13_10)		case(1): $(13_10)		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		break;$(13_10)		case(2): $(13_10)		instance_create_layer(self.x-10, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x+10, self.y-32, self.layer, ob_bullet);$(13_10)		break;$(13_10)		default:$(13_10)		instance_create_layer(self.x-20, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x+20, self.y-32, self.layer, ob_bullet);$(13_10)	}$(13_10)	$(13_10)}"
if (alarm[0] = -1){
	alarm[0] = 8;
	switch(powerUp){
		case(1): 
		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);
		break;
		case(2): 
		instance_create_layer(self.x-10, self.y-32, self.layer, ob_bullet);
		instance_create_layer(self.x+10, self.y-32, self.layer, ob_bullet);
		break;
		default:
		instance_create_layer(self.x-20, self.y-32, self.layer, ob_bullet);
		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);
		instance_create_layer(self.x+20, self.y-32, self.layer, ob_bullet);
	}
	
}