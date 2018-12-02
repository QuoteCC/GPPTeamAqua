/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03F46853
/// @DnDArgument : "code" "if (alarm[0] = -1){$(13_10)	alarm[0] = 8;$(13_10)	inst = [];$(13_10)	switch(powerUp){$(13_10)		case(1): $(13_10)		inst[0] = instance_create_layer(self.x, self.y, self.layer, ob_bullet);$(13_10)		break;$(13_10)		case(2): //double shot$(13_10)		inst[0] = instance_create_layer(self.x-10, self.y, self.layer, ob_bullet);$(13_10)		inst[1] = instance_create_layer(self.x+10, self.y, self.layer, ob_bullet);$(13_10)		break;$(13_10)		default: //also max power level, triple spread$(13_10)		inst[0] = instance_create_layer(self.x-20, self.y, self.layer, ob_bullet);$(13_10)		inst[1] =  instance_create_layer(self.x, self.y, self.layer, ob_bullet);$(13_10)		inst[2] = instance_create_layer(self.x+20, self.y, self.layer, ob_bullet);$(13_10)		$(13_10)		$(13_10)	}$(13_10)	for (indx = 0; indx < array_length_1d(inst); indx++){$(13_10)			with (inst[indx]){$(13_10)				moveH = other.recH;$(13_10)				moveV = other.recV;$(13_10)				dam = other.att * 10;$(13_10)			}$(13_10)		}$(13_10)}"
if (alarm[0] = -1){
	alarm[0] = 8;
	inst = [];
	switch(powerUp){
		case(1): 
		inst[0] = instance_create_layer(self.x, self.y, self.layer, ob_bullet);
		break;
		case(2): //double shot
		inst[0] = instance_create_layer(self.x-10, self.y, self.layer, ob_bullet);
		inst[1] = instance_create_layer(self.x+10, self.y, self.layer, ob_bullet);
		break;
		default: //also max power level, triple spread
		inst[0] = instance_create_layer(self.x-20, self.y, self.layer, ob_bullet);
		inst[1] =  instance_create_layer(self.x, self.y, self.layer, ob_bullet);
		inst[2] = instance_create_layer(self.x+20, self.y, self.layer, ob_bullet);
		
		
	}
	for (indx = 0; indx < array_length_1d(inst); indx++){
			with (inst[indx]){
				moveH = other.recH;
				moveV = other.recV;
				dam = other.att * 10;
			}
		}
}