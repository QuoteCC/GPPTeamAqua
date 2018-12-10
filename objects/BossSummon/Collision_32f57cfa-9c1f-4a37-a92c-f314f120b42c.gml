/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57CBC5DF
/// @DnDArgument : "code" "instance_create_layer(self.x,self.y,self.layer,ob_boss1);$(13_10)bd = instance_create_layer(6226, 1786, self.layer,ob_door);$(13_10)with(bd){$(13_10)	image_xscale = 4;$(13_10)	image_yscale = 2.25;$(13_10)}$(13_10)bd2 = instance_create_layer(5786,1783,self.layer,ob_door);$(13_10)with(bd2){$(13_10)	image_xscale = 3.3;$(13_10)	image_yscale = 1.8;$(13_10)}$(13_10)audio_stop_all();$(13_10)snd = audio_play_sound(sd_Boss1, 2, true);$(13_10)audio_sound_gain(snd, 0, 0);$(13_10)audio_sound_gain(snd, .75, 3000);$(13_10)$(13_10)instance_destroy();"
instance_create_layer(self.x,self.y,self.layer,ob_boss1);
bd = instance_create_layer(6226, 1786, self.layer,ob_door);
with(bd){
	image_xscale = 4;
	image_yscale = 2.25;
}
bd2 = instance_create_layer(5786,1783,self.layer,ob_door);
with(bd2){
	image_xscale = 3.3;
	image_yscale = 1.8;
}
audio_stop_all();
snd = audio_play_sound(sd_Boss1, 2, true);
audio_sound_gain(snd, 0, 0);
audio_sound_gain(snd, .75, 3000);

instance_destroy();