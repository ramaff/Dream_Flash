// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Phase_Transition_Animation(_phase_into = 2, _transition_sprite = sprite_index, _new_sprite = sprite_index, _final_frame = image_index) {
	if boss_phase_transition < _phase_into {
		if sprite_index != _transition_sprite {
			image_index = 0;
			sprite_index = _transition_sprite
		}
		if image_index >= _final_frame {
			boss_phase_transition = _phase_into;	
		} else if active_attack_cooldown <= 10 {
			active_attack_cooldown = 10;
		}
	} else {
		sprite_index = _new_sprite;	
	}
}