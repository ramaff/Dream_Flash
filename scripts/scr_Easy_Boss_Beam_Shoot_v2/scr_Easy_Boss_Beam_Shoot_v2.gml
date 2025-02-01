// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Easy_Boss_Beam_Shoot_v2(_beam_start_count, _beam_offset){

	var _beamFr = min(5,floor((_beam_start_count - pattern_count) / 5));
	bossoffsetangle = 0;
    if pattern_count < (_beam_start_count - 30) {
        scr_Boss_Beam_Attack_New("Active", _beam_offset, _beamFr);  
    } else {
        scr_Boss_Beam_Attack_New("Dormant", _beam_offset, _beamFr);    
    }

}