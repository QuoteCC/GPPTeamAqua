/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42629F3B
/// @DnDArgument : "code" "if (alarm[0] = -1){$(13_10)	alarm[0] = 8;$(13_10)	switch(powerUp){$(13_10)		case(1): $(13_10)		inst1 = instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		with(inst1){$(13_10)			direction = other.direction;	$(13_10)		}$(13_10)		break;$(13_10)		case(2): //double shot$(13_10)		inst1 = instance_create_layer(self.x-10, self.y-32, self.layer, ob_bullet);$(13_10)		inst2 = instance_create_layer(self.x+10, self.y-32, self.layer, ob_bullet);$(13_10)		inst1.direction = other.direction;$(13_10)		inst2.direction = other.direction;$(13_10)		break;$(13_10)		default: //also max power level, triple spread$(13_10)		inst1 = instance_create_layer(self.x-20, self.y-32, self.layer, ob_bullet);$(13_10)		inst2 = instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);$(13_10)		inst3 = instance_create_layer(self.x+20, self.y-32, self.layer, ob_bullet);$(13_10)		inst1.direction = other.direction-10;$(13_10)		inst2.direction = other.direction;$(13_10)		inst3.direction = other.direction+10;$(13_10)	}$(13_10)}"
if (alarm[0] = -1){
	alarm[0] = 8;
	switch(powerUp){
		case(1): 
		inst1 = instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);
		with(inst1){
			direction = other.direction;	
		}
		break;
		case(2): //double shot
		inst1 = instance_create_layer(self.x-10, self.y-32, self.layer, ob_bullet);
		inst2 = instance_create_layer(self.x+10, self.y-32, self.layer, ob_bullet);
		inst1.direction = other.direction;
		inst2.direction = other.direction;
		break;
		default: //also max power level, triple spread
		inst1 = instance_create_layer(self.x-20, self.y-32, self.layer, ob_bullet);
		inst2 = instance_create_layer(self.x, self.y-32, self.layer, ob_bullet);
		inst3 = instance_create_layer(self.x+20, self.y-32, self.layer, ob_bullet);
		inst1.direction = other.direction-10;
		inst2.direction = other.direction;
		inst3.direction = other.direction+10;
	}
}