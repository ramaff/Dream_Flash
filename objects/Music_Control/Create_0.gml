enum MUSIC_FADE_STATE {NONE,IN,OUT}

super_boss_music = [Flash_Boss_Theme,Feel_Boss_Theme,Dream_Boss_Theme];
myroom = "None"

main_music = noone
music_list = []
music_fade = []
music_gain = []
music_current_id = 0
music_number = 0
music_pos = 0
music_add = function (_fade_in = false){
    
    var _gain = 0
    
    if _fade_in{
        array_push(music_fade,MUSIC_FADE_STATE.IN)
    }
    else {
        _gain = 60
    	array_push(music_fade,MUSIC_FADE_STATE.NONE)
    }
    array_push(music_gain,_gain)
    
    var _sound = audio_play_sound(main_music,1000,true,(_gain/60) * (global.gameMusic/100),music_pos)
    
    array_push(music_list,_sound)
    
    music_current_id = music_number
    
    music_number++
    
    if music_current_id != -1 and music_number > 1{
        for (var i = 0; i < music_number; i++) {
        	if i != music_current_id{
                music_fade[i] = MUSIC_FADE_STATE.OUT
            }
        }
    }
    
}

music_remove = function (_position){
    array_delete(music_list,_position,1)
    array_delete(music_fade,_position,1)
    array_delete(music_gain,_position,1)
    if music_current_id>_position{
        music_current_id--
    }
    music_number--
}

function get_current_music_type(){
    var _music_type = Title_Theme
    
    switch (global.currentchapter) {
    	case 1: _music_type = scr_Boss_Fight() == true ? Flash_Theme_Combat : Flash_Theme break;
        case 2: _music_type = scr_Boss_Fight() == true ? Feel_Theme_Combat : Feel_Theme break;
        case 3: _music_type = scr_Boss_Fight() == true ? Dream_Theme_Combat : Dream_Theme break;
        case 4: _music_type = scr_Boss_Fight() == true ? Nightmare_Theme_Combat : Nightmare_Theme break;
    }
    
    switch (myroom) {
    	case "Shop": _music_type = Safe_Theme break;
        case "Title": _music_type = Title_Theme break;
        case "Super Boss": _music_type = super_boss_music[min(0,global.currentchapter-1)] music_pos = 0 break;
    }
    
    return _music_type
}