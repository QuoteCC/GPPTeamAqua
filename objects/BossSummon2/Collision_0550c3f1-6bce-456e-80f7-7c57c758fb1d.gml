/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57CBC5DF
/// @DnDArgument : "code" "instance_create_layer(self.x,self.y,self.layer,ob_boss2);$(13_10)bd = instance_create_layer(6578.5, 8332, self.layer,ob_door2);$(13_10)with(bd){$(13_10)	image_xscale = 13.4;$(13_10)	image_yscale = 5;$(13_10)}$(13_10)$(13_10)audio_stop_all();$(13_10)snd = audio_play_sound(sd_Boss1, 2, true);$(13_10)audio_sound_gain(snd, 0, 0);$(13_10)audio_sound_gain(snd, .75, 3000);$(13_10)$(13_10)instance_destroy();"
instance_create_layer(self.x,self.y,self.layer,ob_boss2);
bd = instance_create_layer(6578.5, 8332, self.layer,ob_door2);
with(bd){
	image_xscale = 13.4;
	image_yscale = 5;
}

audio_stop_all();
snd = audio_play_sound(sd_Boss1, 2, true);
audio_sound_gain(snd, 0, 0);
audio_sound_gain(snd, .75, 3000);

instance_destroy();