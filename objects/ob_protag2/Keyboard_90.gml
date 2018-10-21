/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42629F3B
/// @DnDArgument : "code" "if (alarm[0] = -1){$(13_10)	alarm[0] = 8;$(13_10)	switch(powerUp){$(13_10)		case(1): $(13_10)		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		break;$(13_10)		case(2): $(13_10)		instance_create_layer(self.x-10, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x+10, self.y-32, self.layer, ob_bullet);$(13_10)		break;$(13_10)		default:$(13_10)		instance_create_layer(self.x-20, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		instance_create_layer(self.x+20, self.y-32, self.layer, ob_bullet);$(13_10)	}$(13_10)}"
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