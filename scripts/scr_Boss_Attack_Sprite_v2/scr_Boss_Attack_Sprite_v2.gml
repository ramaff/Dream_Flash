// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Sprite_v2(_sprite, _attack_hold_frame, _attack_loop_start_frame, _attack_loop_end_frame, _attack_end_duration) {
	sprite_index = _sprite;
	if active_attack_delay > 0 {
		if image_index > _attack_hold_frame {
			image_index = _attack_hold_frame
		}
	} else {
		if image_index < _attack_hold_frame + 1 {
			image_index = _attack_hold_frame + 1;	
		}
	}
	if active_attack_duration > _attack_end_duration and image_index >= _attack_loop_end_frame + 1 {
		image_index = _attack_loop_start_frame;   
	}
}
