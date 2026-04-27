function scr_Sound_Effect(_snd, _gain = 1) {
	
	if is_array(_snd) {
		_snd = _snd[irandom(array_length(_snd) - 1)]
		//snd = choose(snd_Recall_Get,snd_Recall_Get_2,snd_Recall_Get_3);
	}
	

	audio_sound_gain(_snd,global.gameSound / 100,0);
	audio_play_sound(_snd, 10, false, _gain, 0, 0.8 + random(0.4));


}
