roomType = "Title"
if instance_exists(Floor_Layout_Control) {
	roomType = global.floor[global.currentroom,0];
}
//musicType = Flash_Theme;

var soundLevel = global.gameMusic / 100;

if global.currentchapter = 1 {
    musicType = Flash_Theme;
	if global.bosscount > 0 {
		musicType = Flash_Theme_Combat;	
	}
}
if global.currentchapter = 2 {
    musicType = Feel_Theme;
	if global.bosscount > 0 {
		musicType = Feel_Theme_Combat;	
	}
}
if global.currentchapter = 3 {
    musicType = Dream_Theme;
	if global.bosscount > 0 {
		musicType = Dream_Theme_Combat;	
	}
}
if global.currentchapter >= 4 {
    musicType = Nightmare_Theme;
	if global.bosscount > 0 {
		musicType = Nightmare_Theme_Combat;	
	}
}
if roomType = "Shop" {
    musicType = Safe_Theme;
}
if roomType = "Title" {
	musicType = Title_Theme;
}
if roomType = "Super Boss" {
	if global.currentchapter = 1 {
		musicType = Flash_Boss_Theme;
	}
	if global.currentchapter = 2 {
		musicType = Feel_Boss_Theme;
	}
	if global.currentchapter >= 3 {
		musicType = Dream_Boss_Theme;
	}
}

//pTimer++;
var transitionTime = 1000;

//if audio_sound_get_gain(currentMusic) != (global.gameMusic / 100) {
//    audio_sound_gain(currentMusic,global.gameMusic / 100,0);
//}

var pm = false;

if audio_sound_get_gain(currentMusic) > soundLevel {
	audio_sound_gain(currentMusic,soundLevel,0);
}

if ((audio_is_playing(musicType) = false) and (currentMusic != musicType)) {
	//show_debug_message("currentmusic level: " + string(audio_sound_get_gain(currentMusic)))
	//show_debug_message("musicType level: " + string(audio_sound_get_gain(musicType)))
	//show_debug_message("prevmusic level: " + string(audio_sound_get_gain(previousMusic)))
    //pTimer = 0;

    /*
    if audio_is_playing(Safe_Theme) {
        audio_sound_gain(Safe_Theme,0,1000);
    } 
    if audio_is_playing(Flash_Theme) {
        audio_sound_gain(Flash_Theme,0,1000);
    } 
    if audio_is_playing(Dream_Theme) {
        audio_sound_gain(Dream_Theme,0,1000);
    } 
    */
	if previousMusic = noone {
		//show_debug_message("No prev music")
		audio_sound_gain(currentMusic,soundLevel,0);
		pm = true;
	}
    
    previousMusic = currentMusic;
    currentMusic = musicType;
    
	if previousMusic != currentMusic {
        audio_sound_gain(previousMusic,0,transitionTime);
    }
	
	if roomType = "Super Boss" {
		trackPosition = 0;	
	}
	
	cMus = audio_play_sound(currentMusic, 1000, true);
	//}
	//audio_sound_gain(currentMusic, 0, 0);
    audio_sound_gain(currentMusic,soundLevel,transitionTime);
	audio_sound_set_track_position(cMus, trackPosition);
	
	///show_debug_message("currentmusic level: " + string(audio_sound_get_gain(currentMusic)))
	//show_debug_message("musicType level: " + string(audio_sound_get_gain(musicType)))
	//show_debug_message("prevmusic level: " + string(audio_sound_get_gain(previousMusic)))
}

if audio_sound_get_gain(currentMusic) > soundLevel {
	audio_sound_gain(currentMusic,soundLevel,0);
}


if cMus {
	trackPosition = audio_sound_get_track_position(cMus);
}
/*
if pTimer >= 60 {
    audio_stop_sound(previousMusic);
}
*/

if (audio_sound_get_gain(previousMusic) <= 0) {
    audio_stop_sound(previousMusic);
	//previousMusic = "None"
}

/*
if (audio_sound_get_gain(Safe_Theme) <= 0) {
    audio_stop_sound(Safe_Theme);
}
if (audio_sound_get_gain(Flash_Theme) <= 0) {
    audio_stop_sound(Flash_Theme);
}
if (audio_sound_get_gain(Dream_Theme) <= 0) {
    audio_stop_sound(Dream_Theme);
}

/* */
/*  */
