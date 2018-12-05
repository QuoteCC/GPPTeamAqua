/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 03F46853
/// @DnDArgument : "code" "if (weapon == 1){$(13_10)	//standard shot$(13_10)	if (alarm[0] = -1){$(13_10)		alarm[0] = 16;$(13_10)		inst = instance_create_layer(self.x, self.y, self.layer, ob_bullet);$(13_10)		with (inst){$(13_10)			moveH = other.shootH;$(13_10)			moveV = other.shootV;$(13_10)			dam = other.att * 10 * powerUp;$(13_10)			image_xscale = powerUp;$(13_10)			image_yscale = powerUp;$(13_10)		}$(13_10)		/*inst = [];$(13_10)		switch(powerUp){$(13_10)			case(1): $(13_10)			inst[0] = instance_create_layer(self.x, self.y, self.layer, ob_bullet);$(13_10)			break;$(13_10)			case(2): //double shot$(13_10)			inst[0] = instance_create_layer(self.x-10, self.y, self.layer, ob_bullet);$(13_10)			inst[1] = instance_create_layer(self.x+10, self.y, self.layer, ob_bullet);$(13_10)			break;$(13_10)			default: //also max power level, triple spread$(13_10)			inst[0] = instance_create_layer(self.x-20, self.y, self.layer, ob_bullet);$(13_10)			inst[1] =  instance_create_layer(self.x, self.y, self.layer, ob_bullet);$(13_10)			inst[2] = instance_create_layer(self.x+20, self.y, self.layer, ob_bullet);$(13_10)		$(13_10)		$(13_10)		}$(13_10)		for (indx = 0; indx < array_length_1d(inst); indx++){$(13_10)				with (inst[indx]){$(13_10)					moveH = other.shootH;$(13_10)					moveV = other.shootV;$(13_10)					dam = other.att * 10;$(13_10)				}$(13_10)			}$(13_10)			*/$(13_10)	$(13_10)	}$(13_10)}$(13_10)else if (weapon == 2){$(13_10)	//laser$(13_10)	$(13_10)}$(13_10)else{$(13_10)	//slice$(13_10)}"
if (weapon == 1){
	//standard shot
	if (alarm[0] = -1){
		alarm[0] = 16;
		inst = instance_create_layer(self.x, self.y, self.layer, ob_bullet);
		with (inst){
			moveH = other.shootH;
			moveV = other.shootV;
			dam = other.att * 10 * powerUp;
			image_xscale = powerUp;
			image_yscale = powerUp;
		}
		/*inst = [];
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
					moveH = other.shootH;
					moveV = other.shootV;
					dam = other.att * 10;
				}
			}
			*/
	
	}
}
else if (weapon == 2){
	//laser
	
}
else{
	//slice
}/**/