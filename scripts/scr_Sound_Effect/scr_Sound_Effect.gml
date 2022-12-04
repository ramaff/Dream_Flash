function scr_Sound_Effect(argument0) {
	var snd = argument0;

	
	if snd = snd_Recall_Get {
		snd = choose(snd_Recall_Get,snd_Recall_Get_2,snd_Recall_Get_3);
	}
	

	audio_sound_gain(snd,global.gameSound / 100,0);
	audio_play_sound(snd, 10, false);


}
