// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_Force_Hold_Frame(_hold_frame, _attack_end_duration = 0) {
	if image_index > _hold_frame and image_index < _hold_frame + 1 and active_attack_duration > _attack_end_duration {
		image_index = _hold_frame;	
	}	
}

function scr_Boss_Attack_Sprite_v2(_sprite = sprite_index, _attack_hold_frame = -1, _attack_loop_start_frame = 1, _attack_loop_end_frame = 1, _attack_end_duration = 10, _attack_loop_offset = 0) {
	sprite_index = _sprite;
	if _attack_hold_frame != -1 {
		var _attack_hold_max;
		if is_array(_attack_hold_frame) {
			_attack_hold_max = _attack_hold_frame[1];
			_attack_hold_frame = _attack_hold_frame[0];
		} else {
			_attack_hold_max = _attack_hold_frame;
		}

		if active_attack_delay > _attack_loop_offset {
			if image_index >= _attack_hold_max + 1 {
				image_index = _attack_hold_frame
			}
		} else {
			if image_index < _attack_hold_max {
				image_index = _attack_hold_frame;	
			}
		}
	}
	if active_attack_duration > _attack_end_duration and image_index >= _attack_loop_end_frame + 1 {
		image_index = _attack_loop_start_frame;   
	}
	if pattern_count <= 0 and active_attack_duration <= _attack_end_duration {
		if image_index < _attack_loop_end_frame {
			image_index = _attack_loop_end_frame
		}
	}
}
