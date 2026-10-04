var _changed = false

if instance_exists(Floor_Layout_Control) {
    var _room = global.floor[global.currentroom,0]
    if myroom != _room{
        myroom = _room
        _changed = true
    }
}
else {
	if myroom != "Title"{
        myroom = "Title"
        _changed = true
    }
}

if _changed or music_number == 0{
    var _type = get_current_music_type()
    if main_music != _type{
        main_music = _type
        music_add(music_number > 0)
    }
}

var _global_gain = global.gameMusic/100
for (var i = music_number-1; i >= 0; i--) {
	var _fade = music_fade[i]
    switch (_fade) {
    	case MUSIC_FADE_STATE.IN:
            music_gain[i]++
            audio_sound_gain(music_list[i],(music_gain[i]/60)*_global_gain,0)
            if music_gain[i] == 60{
                music_fade[i] = MUSIC_FADE_STATE.NONE
            }
        break;
        case MUSIC_FADE_STATE.NONE:
            audio_sound_gain(music_list[i],_global_gain,0)
        break;
        case MUSIC_FADE_STATE.OUT:
            music_gain[i]--
            audio_sound_gain(music_list[i],(music_gain[i]/60)*_global_gain,0)
            if music_gain[i] == 0{
                audio_stop_sound(music_list[i])
                music_remove(i)
            }
        break;
    }
    if i == music_current_id{
        music_pos = audio_sound_get_track_position(music_list[i])
    }
}



