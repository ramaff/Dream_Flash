// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Boss_Attack_Time_Setup_v2(_pattern_count = 1, _delay = 15, _attack_spacing = 1, _cooldown_time = 90, _cooldown_variance = 30, _added_duration_time = 15) {
	image_index = 0;
	
	active_attack_delay = _delay;
	pattern_count = _pattern_count;
	pattern_cooldown = _delay;
	pattern_cooldown_max = _attack_spacing;
	pattern_count_max = pattern_count;
		
	active_attack_cooldown = _cooldown_time + random(_cooldown_variance);
	//active_attack_duration = _added_duration_time - (_attack_spacing - _delay) + (pattern_cooldown_max * pattern_count);
	active_attack_duration = _added_duration_time + (pattern_cooldown_max * pattern_count);

}
