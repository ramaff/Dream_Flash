var roomType = "Title"
if instance_exists(Floor_Layout_Control) {
	roomType = global.floor[global.currentroom,0];
}

var soundLevel = global.gameMusic / 100;

if global.currentchapter = 1 {
    musicType = Flash_Theme;
	if scr_Boss_Fight() {
		musicType = Flash_Theme_Combat;	
	}
}
if global.currentchapter = 2 {
    musicType = Feel_Theme;
	if scr_Boss_Fight() {
		musicType = Feel_Theme_Combat;	
	}
}
if global.currentchapter = 3 {
    musicType = Dream_Theme;
	if scr_Boss_Fight() {
		musicType = Dream_Theme_Combat;	
	}
}
if global.currentchapter >= 4 {
    musicType = Nightmare_Theme;
	if scr_Boss_Fight() {
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

var transitionTime = 1000;

var pm = false;

/*
if audio_sound_get_gain(currentMusic) > soundLevel {
	audio_sound_gain(currentMusic,soundLevel,0);
}
if audio_sound_get_gain(currentMusic) < soundLevel {
	audio_sound_gain(currentMusic,soundLevel,0);
}
*/

if ((audio_is_playing(musicType) = false) and (currentMusic != musicType)) {

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

    audio_sound_gain(currentMusic,soundLevel,transitionTime);
	audio_sound_set_track_position(cMus, trackPosition);
}

if audio_sound_get_gain(currentMusic) > soundLevel {
	audio_sound_gain(currentMusic,soundLevel,0);
}
if audio_sound_get_gain(currentMusic) < soundLevel and (audio_is_playing(previousMusic) = false) {
	audio_sound_gain(currentMusic,soundLevel,0);
}


if cMus {
	trackPosition = audio_sound_get_track_position(cMus);
}


if (audio_sound_get_gain(previousMusic) <= 0) {
    audio_stop_sound(previousMusic);
}

