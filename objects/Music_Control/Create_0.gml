currentMusic = noone;
musicType = Title_Theme;
previousMusic = noone;

//show_debug_message("music control start")
//show_debug_message(string(global.gameMusic))

//audio_play_sound(currentMusic, 1000, true);

//audio_sound_gain(currentMusic,global.gameMusic / 100,0);

pTimer = 0;

audio_sound_gain(Title_Theme,0,0);
audio_sound_gain(Flash_Theme,0,0);
audio_sound_gain(Flash_Theme_Combat,0,0);
audio_sound_gain(Flash_Boss_Theme,0,0);
audio_sound_gain(Feel_Theme,0,0);
audio_sound_gain(Feel_Theme_Combat,0,0);
audio_sound_gain(Feel_Boss_Theme,0,0);
audio_sound_gain(Dream_Theme,0,0);
audio_sound_gain(Dream_Theme_Combat,0,0);
audio_sound_gain(Dream_Boss_Theme,0,0);
audio_sound_gain(Nightmare_Theme,0,0);
audio_sound_gain(Nightmare_Theme_Combat,0,0);
audio_sound_gain(Safe_Theme,0,0);

alarm[0] = 5;

cMus = currentMusic;
pMus = previousMusic;

trackPosition = 0;
